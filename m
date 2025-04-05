Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC7A1C6FEC
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743833994; cv=none; b=HGURTEDvYOdvhT62xkxhwgWiu2xRtiVFu3V0VDX9+7zQU/pbWhPUbGvFcp0yrWWuSoJ1oOW/iNntwxxU2XFKqwjOV7KD7UuHwnlQZ/pztz5GCVejPMZ+N/nOdZ67uuE8qCWOHZ4Xh7XU3R+q965fYLLkzGvg8YyIpv3XJUW+Vdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743833994; c=relaxed/simple;
	bh=Bp8Lk0+fg6KQPAURVr7nSGDpxNlYtNm2P5G7GTkhvTI=;
	h=To:Subject:From:Message-Id:Date; b=u+M/84U7dd2q9CCseOUgbUlTTkvm+1x/nwmn8JlPV49E6CVxucJ/ozUQoYUnly9qEpGdSMJdyfxOix00QySVOhF4wVhsCpOBN8YUWF/va0ZK9Vy2xIS7khhfvBsav3AE5GUTZWvyZixZTM4xPhF8euHSXEzbEiKitVJuL9z2WpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aej31nlc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aej31nlc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6685C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743833993;
	bh=Bp8Lk0+fg6KQPAURVr7nSGDpxNlYtNm2P5G7GTkhvTI=;
	h=To:Subject:From:Date:From;
	b=aej31nlccH/iu/geDRgVBAFAs9k8lrRPygbpKACSyhXpjI9Lbd5QPDZkIgUb/HlbZ
	 Fq3ThQnWWJDP1rmSHHWjD/TAiAHNJlIGJ08NQTUYxlzEfCKyTVhPSFAu78Li18Eksj
	 TfMXumpPT2gADIi7zoq76U03nnMjQ7Dtf1m9Z7lq+uSqySpFIKfCYOaFhqAm2uiHna
	 6DQI9a9l4lHfapOTPi57HsCiv2Fwa9190Az61aYRllf6gCsf7B8Zybkn9zYNLQU3eL
	 SXPV5neY54FHP4gRu90IrUh7GZehhZoj1a0bulBuJFig10O+kd6ixg6iVSTopvl595
	 5KOE2SW54idkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0256C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174383399362.15989.14818248289305733709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49e7e9110f9b7af3dcad914ce5ad11e3d6130e403e69daf0bf676f3a0d28c2ac
Date: Sat, 05 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743833993
