Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB4526AD3
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 16:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720972823; cv=none; b=hgGZVgX92wcx8Id+9nJktKUeRWa4Ew7jZDCwl77MNPdwT7DdYQ3UhTVt1U4xTKNmeP9sIWhVTBb2mkY+s+C4b9LY10vCcmP7D1hJsfBZiv1nDrzg6275iCbbLmmWRmg4LOFvqVcTm6Mt4nBSP4oD1ksOZbybC54dv8gF+hdwgeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720972823; c=relaxed/simple;
	bh=tEi4PwNXqEf+FJ2nVg72kMk5lj6TNxZTQpi1E5B0NwA=;
	h=To:Subject:From:Message-Id:Date; b=BwklWUwpfH5F4F5ozsEGGpy1QKODASE7oHoEUGnmE2HiJcDohTsK8EII0T65Ex24NIGwqDn5GnVRAaG30nHynpGbOfucKqVwgg2j81t8CiO3d+GQK6/EZq5ssNvI+HW5X/8TbngVAYLqaTaHqmwlsHwLaMveUxpmnTRp5fMLCg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYK8vXC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYK8vXC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D724FC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 16:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720972822;
	bh=tEi4PwNXqEf+FJ2nVg72kMk5lj6TNxZTQpi1E5B0NwA=;
	h=To:Subject:From:Date:From;
	b=aYK8vXC7aNuKhmZgNmz4crwLKociVgiZs8FhKyJAGTsaDUSoAhIGbMNHHdpQXl7Jk
	 7P4ETGkYRdz3gO+0mG9TpJNVCfCiATc3oF3TFpzbLBOmzVhV5FbietPxtGkPse3ElM
	 U/MFi65XU+0kH8l5TipQU3+78MqffahRKMjiPVTSwN0PEaOtmsUboYT3NPly0Dii7b
	 hpkwfTCl7DLbVIl37w2T7zfBrqfmqSb6Ru4Kg5ackj7TssvNqpvV+QQzi0NGg+vCez
	 bIh2kpcXFVDeV3CDZJHHL+XkN6Lhk9RfWofx5p9Im6ZQlrQjaobVqGMDynt4/CZFpC
	 L5//PLGH2Ym5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2DB7C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 16:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172097282276.4208.5000612335132674514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 244de57a8c775e2e887d680a7cbb0ac4ced34b3c075baeca440f43aa935bf843
Date: Sun, 14 Jul 2024 16:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720972822
