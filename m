Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385C21E7C2E
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760266794; cv=none; b=kWGLARgiDLmUA3C5mTunWo9sTZJWTvHQIAbtVaoYEnOZGMz89GRSouJcfuDSWp4fHUhSx7AfOZlUtY6bjKF5Wq996McKMt0kvLa9aTY0ybvU5sPakfNMddPfgEBygY4pUwVriDhTjoc8hA5dpxMwArjw2bQIxTBeSDOm8aii+90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760266794; c=relaxed/simple;
	bh=bV+5Q+7uuAaF5VvE1HX11T1IvFgp0VnwtHch6ulEs34=;
	h=To:Subject:From:Message-Id:Date; b=MtSDXe+FR0Vx1O2lcE/lgPpyEIBNZaLtmw3Tfaer2CcORdkULMWo6G4P/v46LtHkRZ9l9laTrMkfl1N22znQDzJNNEieokIDrwtW5ET1r+cjIIjYUyMAQhBf7z71JSaAV+w/0ATP/HBX1dZh9QIbAK0OUWHI8tWVsBj7BWq8akI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBLQDtmL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBLQDtmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75AFC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760266793;
	bh=bV+5Q+7uuAaF5VvE1HX11T1IvFgp0VnwtHch6ulEs34=;
	h=To:Subject:From:Date:From;
	b=iBLQDtmLm6BjAFz6efdwAYhO9W6csQqVDzivaZDN4qtPDdJmtDO1w+hCk/YIlcDR3
	 unodpj8kuDK3fsOp0xODX0AMaR0crcCRToF+eF4sP4Z39JoV0OVuXnP6F+tg3qHIB1
	 3KVbwoK7zvEU8s8BET2WBbLzHPg8V0fEul+nqnln499DSeKt7HdwnzY6Dna+SfW2iz
	 GaA/Ff6iPMX4VY4viRCE5cjMRLnSW3umiPMDcyniNsKEPR7xPFmW6ccTcVU0x4oRJV
	 1MiYqE0qz7nVkyJw1Rtp4h3/1kP93ZojD+Lyb3TbAXP+/L2KEfwS0EWLF62qwp1F5T
	 g8U8Pft04IYqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D73CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176026679357.22826.13533486557302189548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35ca57fe6f9e1765b4ef7a53d951200fe519005b4909fd52b1545f55bdbbe12f
Date: Sun, 12 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760266793
