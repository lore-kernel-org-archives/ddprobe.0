Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E16A6FA8
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708651697; cv=none; b=gDPXS7G1/0GugC4fhWBCDWXRXnyj5CBqWAmZV7yuGZhnhZpUdnj5PBq5sIc5mqVCcd71KSE9f+GgcJYlnHVg0VMFy9YvWJJ76TxdeWxUm/bQ3PmSHUbScEu0hpjkog2ffqNHMPrzGPimiIEDC6acVeIJNxFk96sI3NkO6+DWDXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708651697; c=relaxed/simple;
	bh=NB77Y1X6UItk2NLHZ+3/X5pEbBIavgzvtBY3OaXCrgQ=;
	h=To:Subject:From:Message-Id:Date; b=AuSUfSZbjPIeL44sgvoQDMvC/WeRIOJPa0iVEZTZNQ4oHHzGJQxt7P20GPN6a5ImIQvJvRCQWSjY7NyB1Jm66dQ6H5Jjml71QpcXFJ4LwXImf0+Cx9J1I/Yd8LdBN96pkoB6fp5tGArPMFMbse/UWS/2UIFS1/2gw4Eyq/+/W0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKw+0WJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKw+0WJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75F79C433C7
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708651696;
	bh=NB77Y1X6UItk2NLHZ+3/X5pEbBIavgzvtBY3OaXCrgQ=;
	h=To:Subject:From:Date:From;
	b=YKw+0WJJ6zvUyqfAhSX21eX2iZKGD6H6QQxp3Ak3Fs4+S2rIrf5EJ9IqATLK0AOFK
	 5CY4Mde3CakM/67AMlRcNunaQCS/cKdxjuIKG6227pFdN3Jd5UZU6wk5Gt9dwe3AhY
	 K2PtGPi7Ci2uTg4hfPhCCOrkTdq0WBvBupESOvvqlG9MbDHiIkWCozoBDIgUg3GDh7
	 d+RbR2UiwJJhj2B0+ZIvMiVXEViOb2DSsGVintOaJu87SwmXBy2TOmnBQFyvZz1SGB
	 8obrdITlxY27T04UsXMwZourUuwC5PpISWJOb6cLOcmaC0rDt2og3syQ8wIi263TRs
	 X/fYQosT8hq5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E41BC54798
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170865169637.17030.3701794491645737956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb267d769df157902c5bf17250b6e3878242ebc542d98285e00ffb938dc66da5
Date: Fri, 23 Feb 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708651696
