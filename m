Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13422250C19
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749461397; cv=none; b=pcfjjHhCYqi8IVQexalG8nBIkMOvoXLoBrQ3Dfjy+L7fKPgXmLBoT29rgrf3M2d4NE12L16OzHD43kL+Z1I0lPLMJg6hINl62OuvzRDQuOnNhU6qrOv1EKE90qX7GaCO7g25kSXeO8EhLrJAHHAQmW4eStIgK8GYvZHNZgqNngs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749461397; c=relaxed/simple;
	bh=960YnYf6KCIB5+5sj4X9CbQIWIAFlDsGSOS+LAOyyXM=;
	h=To:Subject:From:Message-Id:Date; b=HdCskOUZBQUC48WUqj+/bGkbT0/8vaJy1sWQgouykuI7zJ6Q3Q6lJ3bmrSibSmn+u5UgXNb/xInpjxt3Bt6zuuGfXyZorCksbhEFL1SyJi7Tj/Tot9z2+LmvJ4uZRYcUjMyNBp4dW4gXgsi3N3WVs4xc74gvO7MziuFb7tXSU88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1+S6jHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1+S6jHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D29EC4CEED
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749461393;
	bh=960YnYf6KCIB5+5sj4X9CbQIWIAFlDsGSOS+LAOyyXM=;
	h=To:Subject:From:Date:From;
	b=Y1+S6jHdaueGno0MvjigXOjiZmSUoKHFQN94pQu+RN8rlkQVUPNBtVF3O/yrE+QrQ
	 LeGsV2iO5kqk+41llzQ1CAjI86dRO8dQYFhjGS+D88C0fcpvqBQhRr8h+lIFGSpzi+
	 t6NNAwnKxqEFzIgRltlI4c/fTbHwQfWiQ2rwfIRViTrAyOBfrI7qxGHBmSCICkKZD+
	 G8IFiS4GyRPdN8/nx9TzD/O25lGhTi6I/omTaowY+A7RRsMyHSuH17nk2KcAPRYjAy
	 vedwwchvbKbvhXlV2KZHCC74e19UgTZ58N7AZC0seg/gYkwgHV7/nUppJsC0kXPkKN
	 JJntu0rLC4oxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1DFC61DB2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174946139357.7193.542464051211369138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 727214c32174ed1e11d10b336b7442ed7f6263670cdf984af4e37f43d84ca620
Date: Mon, 09 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749461393
