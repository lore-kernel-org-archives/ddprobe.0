Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78CE313A3E1
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 08:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716798863; cv=none; b=ZKDC5P4486TzTn/j3+hqvlEaS82xqwBTSAR5MZadee62rqenLCwb3yqCkdzNDwuwvkag9oWatPBdDHOOInDzUoLJmsY7EudSbjrqiRbRnanq5u0wULR6jPqVMpshrXs3qJA7jqG6RmgYC+N+FJ8K8+BgQAvXLmN0+jHRWwMkIHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716798863; c=relaxed/simple;
	bh=tLZ4EbN6Gsm3ZxZ1IIa9+B81VGQhDS/2oJi4T46Mg+w=;
	h=To:Subject:From:Message-Id:Date; b=Mdb8gLQCiJlvyJccEc2biVN1VMaIIlIsAJjo/wDtTd6+1ad+17954WkZLKyyBA5UGCr9UXO2TsxFXMBLHoNutEj4i0NbJYAcEZRP2IYHyGSixslM9up3sKlNAd9vFTRzxczTI6CtXsgL8ETLlJd4ZEydOSkBVRh/G/VoGMR1AUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbBGvzLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbBGvzLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFAE3C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 08:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716798862;
	bh=tLZ4EbN6Gsm3ZxZ1IIa9+B81VGQhDS/2oJi4T46Mg+w=;
	h=To:Subject:From:Date:From;
	b=EbBGvzLtXSGNSLHNQI02/iZ1QxhP7BFPufDihf6tsB0vNrks+2eQ61l4t5icyfH+v
	 KOyiMm1OP76dD8ye/RaazmJcjl5zmfBSQct3kHJeObaOEZJugqm4BV/keHYMDdn5Vq
	 MbWSxuJjoVcaw5CyLsOYa+j08KvYOCj0UxPaIpiS467zFdYAuH3bRY33gXkgbLpIQ4
	 mkEvd4cd2++gA3zw97UBzS1JO1fgzImXS3F4QCRaLyrrKdoDcBf45AnWvDrWGw1bF1
	 y2qr+QlDehXusk9FzyteLJh/eT12EvKa7aDik6qJ4xqe4NOYwL7QezA1DhYEsfWNH7
	 W6y++7FAs/m2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE032C25B7C
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 08:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171679886283.14440.15213557491914655934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30752369bfef90274507c76228251bb274789a26122f44707d7037228186a7bb
Date: Mon, 27 May 2024 08:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716798862
