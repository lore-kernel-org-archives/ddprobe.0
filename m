Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73D61FBB
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712810296; cv=none; b=oBVc5L8JhoP3ZfNSWMAzQGPWLBDSaPGxBdj96avMxusWDcXdEWHNuDYk8QhtjQSIOPSQ2rHMqlkTftrpBc2AYHuAzRSja/oS5fXkx1jxnRudgO0Oz74tIJWQjDnyY2oh2FCwLHMhsi8xWWC6k2f1QV9aPFGY+wg4TvP3Xd7Nk8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712810296; c=relaxed/simple;
	bh=6iDqoSVYgItf6sjrtFjlKcu+EJCTatDMf1t6e8PEJbk=;
	h=To:Subject:From:Message-Id:Date; b=Fh6fwEe/Z5SbgcTt5IcNYdo3bheCAzIK9cyqW7zyGTsQVaFi3uU1iNrFGwzFfxlsdXAB22qMPbDcxpiuaZrixhU3ruO2PZyPYvFr7lyh0dG838+6nvtOWT+4ohr/aPnNaXx3KAzhSXiRdOJQ0EMuvIxb4EC8NitXQFuxVao/IH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoWQi7bS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoWQi7bS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BEBCC433F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712810296;
	bh=6iDqoSVYgItf6sjrtFjlKcu+EJCTatDMf1t6e8PEJbk=;
	h=To:Subject:From:Date:From;
	b=KoWQi7bSVcB2l9bPFeZNHNtnOuAPQDS6nwueujJqNvgDRxoT96Vk/VJELahGoS3G9
	 Lhgy6R7dtjoD0xIo9ni4eVXkXfXNRmvkqCo+616+XY7cXiDTXRMS7WcNG/rgIebGk3
	 SZBt2IWxY/YSim+O5q560Su/bWRZ2QyWEyhylelu9lSsL/YsyYPTZ8jMUFrtMvcb2H
	 o5DCYWOjp8H+xdw499WJ6Elh1xNtvQHTzBZyzNbNgpkafGjMyCe8gb8rAti5rON1ww
	 IZavf0D5uJJRnpUf+t8wWxaN7UrpsCT97mGC3tOaRTOlrqh5wt8U+nXO0R7rKvNp25
	 lr1pS1hKAVuGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66BECCD1292
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171281029637.1170.1250630342663207512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 706f32421d7e31eec1f095dfb76e3d2d303377e6e1bcc43f8d92d55a802c8ca1
Date: Thu, 11 Apr 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712810296
