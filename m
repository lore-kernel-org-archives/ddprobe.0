Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E178036F411
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787388035; cv=none; b=Wmoldgis8i6cVSZ/mrZvW8Imk9D44b7Ug2Uu167uHv9/IZ6tbcs94jLx8aGeOSJKRlQlVGRPjxa6zYYuEYLOOaeLBNRxzv5DvSVrRn6bGJfZBBXhL0kS93zdiAXJT3wEjxCc0v71C0WpnjMzV2K+YefdHZ8GAyufTJK8FUcuHMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787388035; c=relaxed/simple;
	bh=exWX1pzT+6c3r2Q/6oAHypKsbsYO+eWeZnhKeJ6VilA=;
	h=To:Subject:From:Message-Id:Date; b=G2B4rD0OUglLl+iWujZcVyW/qrIdR9wV4sYqMqfyy2qCp3jn8WgrUNpHJwugrmqHXwj6tnP80nXU9+P6RmpLgMW2uVw3WvduRxbU7qTNR77lCzqamkNlYKmwKGEsWU0jgJ3pCoZl94xe7rKGjhL/ZddQR28aeN+RJ2I9MPM4PM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1FRfNT2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1FRfNT2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B85C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787388033;
	bh=exWX1pzT+6c3r2Q/6oAHypKsbsYO+eWeZnhKeJ6VilA=;
	h=To:Subject:From:Date:From;
	b=F1FRfNT2GfSUNlhnIYJuylIHxCxcvIxuCgTuk4JuNdBrJSnM/5wl2mUkTnkjgMpB2
	 gvFJ/iWJPITMo3JzayjfKE4TJ2vcVA4yuQLNglIRiDmtXFeyqi44VcOKIjcZNto7Cw
	 BTPKY6jWYYVoZpagsFzN+Omat0ZtYCAFZ4BoUYuTduxi/JUEsrWQonzAcSB/2D+epR
	 aPJ8NC3KVjRDCd1FnGBg7pQ8LMNCB9YJt3j53oSqzcVI/uyM+7gN4LPbZh81FzIHm3
	 DUJYsiNwUQny/ied+nQBZXMi70c1PXejNWxWD75QDonnSjuxuuJinpHS+vjM74t+ES
	 Cf4wwi5th/yUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1592C5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178738803369.18458.6131830043081740374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1aaf556cbfdcf61f668f32bbaa7d4241de36cdb188913dee33a87d65dc51bd4
Date: Sat, 22 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787388033
