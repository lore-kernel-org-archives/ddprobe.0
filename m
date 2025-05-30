Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AACD23D29C
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748633994; cv=none; b=XAVsed6ZOVlq1UADT38tQA5fWgxyhLELPCOQXQZPA3q2ne4F7+vkT4zd39Ewp2bC6RGhFCZYDtZJY7fHf1mA2Kn2+fdtp5SszsrS5/20+YOGhZUQgPICPWmTP6saGU4Ura53OlWGEvkx+imYe+C4/y06+FiZku5G49YNzvqG1KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748633994; c=relaxed/simple;
	bh=mBKHDlaEngIjVnndaY3EE59bX8UwgTBgr9N1+uqQHfA=;
	h=To:Subject:From:Message-Id:Date; b=a00OnQG8op4fxZFfQ8LNDOpVESFvLu1M/j50xvvL3Z2b8IIo3yBD4qtpFupeUJByT7VAo1069D7aEs1bb7eRFQH1butasNzjliVnwP76g598zNTO4cD7oX3vIlwXnv9YFcs7lqO4Hjcz27axaklO/pzIP970aNApOrEnLhY6/7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNZAwfvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNZAwfvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A68C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748633993;
	bh=mBKHDlaEngIjVnndaY3EE59bX8UwgTBgr9N1+uqQHfA=;
	h=To:Subject:From:Date:From;
	b=cNZAwfvyvD1hEGeDIOzODEPIVqns8OuSaK1c3WAxhRwquAHgMX0P8ko0Sv+DRkzAN
	 VmmXuDKqiDRC8UGA/g8WeU9/U5/K8UZ9qJwTAHBMtF58eJJghIgnYgdRIxBRvWtevv
	 Y21iAyWSaH5Vxc+7HwgGoaNGqL0Mz2LJaRJp6vqLskYC0vm8h0g63XFoLyKH3PUe9l
	 Oks8eruVAjXH7KD5tlgeoPc5VW/aHKTDddvDM1kVWXX2DXdYOJjCoebA08KzKUdbiz
	 uDGaLIwV08L+uxJpYE3R/3+NX1aDc+xQhDSdQWSLd9hBuNKDJIw+LvKMjCZQ+dBD1z
	 iiMdezSRJOIXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F567C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174863399357.9952.3420775700215888200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 739d3c4daf439c0b5734d421752264266a974a486a32eb76b7dbb649ea6574ea
Date: Fri, 30 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748633993
