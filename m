Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCB8E20E2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B490C433F0
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671987687;
	bh=+i9hOGDmtl8535X1TmI2pImy3ZdPOI4ygpNuvDBrJ90=;
	h=To:Subject:From:Date:From;
	b=V8lFYMMbCEiHZlnb8cxemwsQmmSeNXtFAK5JZb49SuHM9bBx2nP551pRfYqjROQcU
	 nDF+D0ks6KVLc2bHNS/sVaOFpd7yMNoexHCZy7K6vdUr/Bz+57rsRPcFJjRO6WFR/J
	 bCGHWN/yuqooAoum+lZVGVNPX8+GC1EXXNDh4YXvRZu6A8c+ihqtkVTfGWA4Bf0fU6
	 87Kjdop5aMKpVOg6XjTASt2F0GdCWEt43HPYEZnak9wedgBRwRg44ipU7z4HChq4va
	 vNSz/gqH76+Fc30LFBz0EUpYmxx9RbsRTHAXGGbGsJ9rwiA8dTM5mV3GKP30p5FW5T
	 9k6ftsGMI8Y1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F68CC3DA7A
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167198768744.381.13983169878834461900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ab59505f561e679b84360cbb150c55710a8ecea1846e4019130920b682fc074
Date: Sun, 25 Dec 2022 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671987687
