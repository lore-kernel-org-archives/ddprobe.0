Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3279C7828B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721313954; cv=none; b=qfcmVCQAiwh6tdWwVAlhWwzVlNZEW3oHe6gnDxS63MdDFVynnaEJMDe3oVwAcA0UEQSkL4aEfHu69VSosQZ+bV1UPpJNTr7hZTMCcMcmM5u6uVlXjWEHZ2fYJWv6qHlUcM/2mP8h6nDQSYRhA4/wXLdvVmtPSMRNRXP+OGXUQJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721313954; c=relaxed/simple;
	bh=qgSX81YxMgD5EQMEtTTTrYGQRwtQ4xZfUGLHscirhFA=;
	h=To:Subject:From:Message-Id:Date; b=ng89A2b2RKJciBxvO1lLyxauRuZA1lsntLWIdvdd5qb30zfyaZu4PFdM6ap8vYkKgtTyZn++UDq65Vk68nLg5H0BXl7cez17bseU3DzF7+YPhzhLbnpjmWZbcdl3WZvCPP9rZ/jWJyUAPWvOmCm8dLh1ORz4mCrZXqWkI34Zh+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unF/fdGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unF/fdGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FA7C4AF09
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721313953;
	bh=qgSX81YxMgD5EQMEtTTTrYGQRwtQ4xZfUGLHscirhFA=;
	h=To:Subject:From:Date:From;
	b=unF/fdGa160VIHu6x1cZ+xNyUD1t1Ih565q11ALvzsDx5H1qiNDB0G5Txf4no+R6+
	 7kY4yJTSbk1Lov8VfD+EXrwZsGoH0DnFRaVpob10VQpBZZ70OckUhTIsH5x+rlyjSo
	 iH/8ICKCl2eDDNiK8Htrj3uQ3lBQkxQRlV1QpjSQtJYrgOPegfh66WxKP1aD7Mcen6
	 8ypzbdJOPU9uyB4Z5Zi0q1HjRpP+pxjGfoan31lAtAugwwIeZrqensNIx4IrS6E0B2
	 uNO+jGQf+gkxMBHzt5+NQWZnc/4CD/kvkNdskpuRF27b9uNEoH7gKSQANzO70GG0fa
	 3rjqOEJ2b8Qaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EBBC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172131395359.28060.18186329253201556228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc8020a9e38e43466a178b692d9fc91d4e52438ed3ef956b01762105bc5ebc96
Date: Thu, 18 Jul 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721313953
