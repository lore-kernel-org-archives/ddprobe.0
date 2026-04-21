Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C840D2CCC5
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 17:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776791854; cv=none; b=Td6tRT3DcWCLNDU75ylQMxrJFInshnr8pCtPRMRRgjoMEuKMqGMmOay4nyrS3KsA33ud5HkvbQOJOMVJH64WLeAS0SIv87xp580gkbEu9e8bV+O7v6S5kENgTnG5o4yHHAugVefaYYSGj+lmxm7whXrKQffe/+OQZEPfQvdVss8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776791854; c=relaxed/simple;
	bh=ePppf5/JwKtUrcnTzwLIsb6amihDS7IMNwuylHXtNjM=;
	h=To:Subject:From:Message-Id:Date; b=tpnBqVwNaXl1hjGxFaIrfTT3OUGyFMClt4sJEBBt7v1KnjGYIK4XphUECWW12Cd28wutiEyXrgofynl40lSV7bTj1lu0IE9L8WVsE8jnWOjJdAEWupEq3YdWXnqkwC/H2+FFnnGo11nDTw6Wtu5c4FNLPV3X1JLWbKdzfyMH9zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9b75Ome; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9b75Ome"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA07BC2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776791853;
	bh=ePppf5/JwKtUrcnTzwLIsb6amihDS7IMNwuylHXtNjM=;
	h=To:Subject:From:Date:From;
	b=R9b75OmeN9JHByW2i0XSccsfL2rFt6PgntQkFHNAnYZFeWuZ4m5yDXSl9ILaLa80H
	 QaFFgmTf5YuwA0szbxeUqJwvrhxM9tOgEHxGCkWJcPy/cVUjQrdFkip0HNym56Al1p
	 lFVBRfFNPt0oDh82v94z5RzA+pAD7/hhdSswsdJgBlJwhEL3Qhf32w7j3Tf1ix8W7h
	 KJPLyZnWiM1hZBTQfT7anFeHxp1tHn9EyXLJ/pIPnfGkxtCUWH2Vvtm3BoKu01VjbC
	 FcSUzqio5u2YuHeD0Zt8gr8Cjv6TFa+pd8wu1D51QqMjv2wAFktbyj/nJl6h+LGvak
	 veaaKyji7Wg8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AEBF8FA9A
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177679185368.18701.16294660151877631804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22963157117947e6aadc9a10fdbc4dba826b3b9803acbecfc27764a21ed8ba19
Date: Tue, 21 Apr 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776791853
