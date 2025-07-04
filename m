Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4D032623C
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751644795; cv=none; b=CYpEeDz2d1dnLHhAkjvHTLmZgtI8W/hg8pRChNE3y7BYAgDPot5jCbCfGK8hgldSyLEfEWuWaTTWjUOGLgyn7ue/J+Kpx/esM6QuYWIBAkNhmEWs4B1ygnnww0AhqejJDXHUk0/tGLOwY2Bqc024H1Iaqx2rBhFi8xj5TNIKyak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751644795; c=relaxed/simple;
	bh=5YoOrCKNM+qckbFvswh0NmUMy7Ga8Eu1EHCaIG2XfvA=;
	h=To:Subject:From:Message-Id:Date; b=WAwjgfyNM71DF91wZjBlCq36KVo8OkrDs49ixdxujgRFR56tEZFadLfJK5TX2+28F6jIhhKYlgc8VJhF09v7TKmp7tvr/XnEEOKVMD078cayuJZmz954wA5x/YITz9xOCaix1EzpPcSG9FhFNE+Ojei7uvwmj8K2hsBplNoR4f4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8g929uK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8g929uK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2007C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751644793;
	bh=5YoOrCKNM+qckbFvswh0NmUMy7Ga8Eu1EHCaIG2XfvA=;
	h=To:Subject:From:Date:From;
	b=V8g929uK/AdFDhwP2DMkkhvfFFo1bQbSn4TPwRKANakxRim1mb/lMlYLdVHM6DVZC
	 rFqr3pL2pocT7AnpR7qdlZ4ZhCrn6Jr4TGDSE/vQb4qNJkIxK5+4b/jsbCVwyhQVOd
	 ObTPQZ8h2brYcSeq5VHJpTOoIFxj45iSGV/NxjO/nIxQ2ps+Ie8bROWXOvvJq4oS63
	 S/UNhjY6l2Ryxa24uyqKBYril+M1aboQcN7bdbxDfyiG0wMDm/hnr0lmZLnwxSdpye
	 MbDufr75hLJyz6zgeEHwmAOABDm/8jme3XseZvVxz5VU2SQI19F9u2iOowm5s+7XsG
	 l2DLcRnaYs6Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDADC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175164479357.13796.8281857163475384658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ceb058b4ccc40fb7fa7e9742610f7ac6a5ecbc9ddd18a53d3ad82bfe471f6d
Date: Fri, 04 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751644793
