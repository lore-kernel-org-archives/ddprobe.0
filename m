Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C0B3FE658
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773337493; cv=none; b=eMVmDwjyiQevJ5kO1OWLc8fCz6L4nzOuoi40u+7aJy40nSDd65UY2mSAX4DDwArlIhWQCb4CtIVrAkB4ngL6HyrQIHEC4RVo8EAaKxBDrYHkqPh6ur8muR6Hq3QZ6ZDkKnSyoJTDCMTOeRnN32XU1k2Nh/l52ABH0h/4V7OeKOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773337493; c=relaxed/simple;
	bh=VgPj3KME8aP8ieFtqj3oa5h6TJv0/ziMSqnR+yMHUiU=;
	h=To:Subject:From:Message-Id:Date; b=kYXePl778e3HDD2lucX+tqHdBoLsWP4xn+j4/d3M0KsFjx1lnO/+Is0dyxROZxERfHQEYD7xeTdPhNhk5n0gpMkmjxpdla4NbptEIqUnnRSsquIaEAW1+sjJKzOuz3KIh+jO47lAv0askdx3RNDTIeb32OwpJ6TiSk1y6/MvHVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iR5TRN5e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iR5TRN5e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E862C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773337493;
	bh=VgPj3KME8aP8ieFtqj3oa5h6TJv0/ziMSqnR+yMHUiU=;
	h=To:Subject:From:Date:From;
	b=iR5TRN5eNDOVzeNsm4/z0odVRwOkT+CEocHVlnz4zYL3SI772kxfE6LZTNm9p5d41
	 2wGwnxFsgLkSPS4mUd4/Rtw8HkEfyez34qcyaWJkvA52ewrl7FIJEv9vJAKzR8HFZH
	 WoKF8Mr6L8feId6g9U8ULjjfdaq/phC3PLvqqWq9cS9xWZDBvpbxMWp9491mD0zcgT
	 ir03635PS1iMhDxDOoyjRnRxcc0AnoowS8YjGw2H8kUDTFhWvsP7DoeKmIK+Dn7WsB
	 AELBhMYKlJkfhk7LL3IGDWqv3lztN/Fc/Z7XL8I+vm270hVURPZ5Uh3YApPM59iegP
	 +L0AKMOCMZRtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F599106ACD5
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177333749357.20444.16271016003844303974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dee4443af102114ed614c4037d93debb3400b49cbf740190400d95819cc55e3
Date: Thu, 12 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773337493
