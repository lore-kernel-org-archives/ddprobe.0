Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65DF8130A7D
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 14:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719758663; cv=none; b=rgbnBQJeNxj/ZvMfG4KoXVtTS2y3fhqzUo2g+QMWGf3BSF+I0IK2ywx30Oc9CZOnpVQ6qocn4SjHmJk+kI1KEPc2Ts1iKvE/O00ygFgH6BSGaigz/n6i6OLnJ+aDA1NHmhbNDNRq99D6mU+x2S/EUEEUzAR4i06wC6dHuBC8DOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719758663; c=relaxed/simple;
	bh=tzkG2En7jJ3KjrZphnRh+cTqp/FeNsj8AmQCdDCYLVM=;
	h=To:Subject:From:Message-Id:Date; b=r02xBuY2YfZd0gKsfo8CVdGKKV0XUfe3UjMi/lsMla6eweurXmbDAYl7aYA+KP3hBpKSdxmmwoJ23UMnHQjQenrcwV1iRuuyG3da8nxSWxHPwJt6DtmNG4En3q7QfTxdEjpYKB+Q8NvU8TZAe7/3NrFUGhkQv1tdj7kzzzxbyXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUSn40+u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUSn40+u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC04C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 14:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719758662;
	bh=tzkG2En7jJ3KjrZphnRh+cTqp/FeNsj8AmQCdDCYLVM=;
	h=To:Subject:From:Date:From;
	b=JUSn40+uy+4r1y2kns2kVWiIbo1oBL+SA60Disevq6N0jeyTcnF/qolAL/1SL2P6m
	 OZuoqGik9ww38r6Cc6LA8gmGmWdukCLNVpI7liG3lwiVwA0wwWXp0aZhduoDveTg2S
	 YLH/HXupvCbg0PWGYn53kBYS5wF3WUyKHiwTGufNCC/hmNjvV+K07BBcZXB/lMaEDS
	 UQXG1wQCdWWowd7LdlVTAFgqKD2ZYMFRXTwAW8Fp+z3FTFt1X1uFDWXNE8ETji50mX
	 LBMM5wfINcM2O+iQp84OcWfa0Yf26yOVBEBGtKvYqBYf1sHqA+2Ykq2X4IOojoJg/G
	 wZ7FqxfBEo7rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C078CC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 14:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171975866278.29622.3071599858585591170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b7d274e439014040726acad975010baab0b8732f5e6038c691ad7240302f13b
Date: Sun, 30 Jun 2024 14:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719758662
