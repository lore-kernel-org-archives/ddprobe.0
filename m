Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6162288C3F
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760744393; cv=none; b=hNaFjrabZrBCA7Z7BLYySmthE3Z4Ajcm+bOXLZ4v7tdVO7ipDLGhQB6lkY58OWKS7GtQ+o03X8DuDwrmqoP1fLY6bqU2WomT7UWKutWYFAyBCfNyBQelviy2VIX5Em32a4fxxUc0f+42GMenrJU08u5RVDUlSGwz0UCJIhKUtAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760744393; c=relaxed/simple;
	bh=FiBRLriBAQcQhnljHukWBGRxd6wdg6/KTNhvyhl8+oY=;
	h=To:Subject:From:Message-Id:Date; b=kmw6chBtf5DuasguMQDxfNpcDHX+lSZdvVXgFPuuCUiNyEh3R+QHB/GtJ96PB9EvPqdCZn7RZoC9y7q1DLcC6koYDg4Bl9tPyLxb9sHppd3MFjJSw0EPAGJjCIiieUFITj52nwwKrvJR0CnQdNlc2ZEgdFdgifWQ7lRVPWXL944=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5Otug+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5Otug+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4896C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760744393;
	bh=FiBRLriBAQcQhnljHukWBGRxd6wdg6/KTNhvyhl8+oY=;
	h=To:Subject:From:Date:From;
	b=U5Otug+Ma1wyfRuyKLD8Lq9PKrbLUka1AoWjCL8ssiNpkKncHkPlXjPgOTGoK5p+C
	 iNZm4vkNfbABQ6ZHV6SqlLcVuiPZqCEVPh8xSMbAgJsbbJIPeTdqss2auSfD9BICdw
	 91eWSv7H8kYqZ6UJtbExTOv0A5wTpCKOv1o+0oRPGBlv8IXAecXGckG+cAxg2pf1Jj
	 2lNilZqiy/Vdx1pH0OBXwP4oZRxNbalzJm+RkKo5PB1B3r8hV9A3wii/rdSAlG7Bnb
	 VRX+ENOzFO+1vufPUjz6dITHanPRwtT19pH/XvSSDL2AzNeXNWkTVGRMRDuG+t2Lkj
	 OiHANDhY2GM+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AFECCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176074439358.13370.318732156458937014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64610570c3fa04039ec8ff1ba448375d9d5bd61c390a77795e667dd3a82d41c4
Date: Fri, 17 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760744393
