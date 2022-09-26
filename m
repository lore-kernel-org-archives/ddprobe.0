Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD10C365
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70CADC433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664151653;
	bh=DeFcx5uQOx2ow33mAZaoq8h/a8EbjuMIQIooRHPgvyE=;
	h=To:Subject:From:Date:From;
	b=Vt6aH6TOtzkU9YEYbsgjoUkC0yFfHwCuBoW2Tub+Kt1ZoiKzc1/Rx4jAj0sJDBg6B
	 CqLYEyiUTSUR/Mx0F2qDmmtHXozpVOAbz21INMFoYU/VaqY71m7jDcqc4f6wkQKX2+
	 CZSxxA9W0Y30sBxv+1pe5EiY/GTicGCdnDzGq2KHCDU0VjOYKIuH4eO6dmxxU27uhU
	 jvNHGtPKOi385NdRitzP/DOYRB1KFGpvN4uMtDuraDTrtUUdzWXi6wPKenGqgGalTx
	 ucewKbbvahP7DGLMs90TwR1hf42B4WwKpJVOiiMpqd2vsVRkv9oodAlkNwiDxrew8t
	 9iiw0s+GPDgHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5490DC04A95
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166415165332.21839.9049585386883890230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd097067221a8c8cce3d12bfcddd670e2ef85a810839bd89595156fbe0ef7f7f
Date: Mon, 26 Sep 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664151653
