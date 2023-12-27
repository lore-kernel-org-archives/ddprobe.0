Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192C02C684
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJ5Xpv41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99B1DC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703671696;
	bh=C8hTCPFhEfWCeIlIF3kOwHZEyZ912Xi0HTYOT/0cCs0=;
	h=To:Subject:From:Date:From;
	b=pJ5Xpv41MtoX1ozAX7wX0RZQ8x89jksnp+sm11pYL9ldHnggKPEsnytQ/K1wv84Ld
	 ndBX3dcDqAk+N92C1Q1t3Whv/kBwrvH6Gl3lZi805k1lwtPGLOx0CXCn1ne/n/IYlq
	 iy8dTPiHKmj68s73wuHwdMGPNv5acS/6O4gL75Vd5/TCNRN4fEjaRtQNN8sFyzi/Uv
	 Ix9TQjx/s/4ja5tqyByHtaKiCavLqeAfO03UuKHlq5Sl/8vE7lg8uFdvLvlTmiDRzs
	 auzysPapT+nxCWueURbqL8jlf3xKonaHDJsD262UYgRUOfAxIfi9zkL/i5MqSvT70+
	 Vy4tbIn8sGOJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78D65C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170367169648.10212.6499150416937216476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eb7c05d684d98fd756eef19f5faf60f4154218bea02bfc8c5a59f96d840f6ac
Date: Wed, 27 Dec 2023 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703671696
