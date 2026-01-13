Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00CBF34AAFB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768340634; cv=none; b=mplaPcX6VQ9Wwtf8kx+4Os3WasNhH5FLV1/yKPumL+Ii+QXgvFyLYdk8tq3kWEyiX6cl/vOOFyS1KRFkCXApi7OeNI9BR9vOWrSZ+5Lm/A5V3dkWZm5FHEXHKubaEdLdqxgivsEk3mRCrWoUoblefxz6ZiHPSLOJodHXPB2aO4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768340634; c=relaxed/simple;
	bh=zVV0jkcH4ddd+7LakN/kkcw0B6iztYurvdfpjZzOAMY=;
	h=To:Subject:From:Message-Id:Date; b=fjIbVohjZuM0ILt2dRro+9unSpyiNN1y27cAM2kIi9ftuHyVCW5jJrDwdhBF+MLEUzVfTq0VXdc02e1X1ikhn51VkkeOgri2wUI8K9MQ7uS0WQUV2xL9+B9Z/NYOVlTJ2Uxqyz9HZJL9DpZoF4c04s/z55g54lK7essM8FBqdFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Npy9dxCt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Npy9dxCt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C7FC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768340633;
	bh=zVV0jkcH4ddd+7LakN/kkcw0B6iztYurvdfpjZzOAMY=;
	h=To:Subject:From:Date:From;
	b=Npy9dxCtqTsEg+wjREtL3iaajeVgY83hUJfzkwTCun37bKkZNjS/g5rZ23fR2VSUu
	 6MmDisMiWGYR9fuiTjWJfp5h+WE1YqwF/wzNeDVSt1IYtlSqGNdofwdQk7isHsA9qW
	 DtARAHMWJ8wStR+nRmCZkqPLVmnqlBrqrl4kYRKPHsjaauFK4AiO578hWiaVx0PMk+
	 IIBWz2jy1y55EscvbewHtnH+OeJfP8soQV9J9sHroc1iZVcueMd7PKWsWW0IjWJU7i
	 yQVaMGOGe4UKREv9uO01pUxHYpNH7f5ti1O5M0/9nRbHmqxLkwVz2XqjGp5ccYAWAb
	 y6IYmCPwAbDlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D80D30CDB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176834063357.1342.16711635000995922003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 122ce75bdde805f580dc30075bd9dbb5f797333670867d5cf98b002fec9ee295
Date: Tue, 13 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768340633
