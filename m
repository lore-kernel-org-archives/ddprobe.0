Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368792D8382
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 23:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779751954; cv=none; b=IZSoBs8VTW5ZJqX9bouK1TLa7LdHWoimbju+/tN9m2axCrhGtYd3AMZJOIBOSZZUzhU5A2Aqjmfu7ZXe+Jmsohyj+UcdT+a3POvOwHUKF75XTJMRVCv5DS4OKIlJDpwYr6nalu3eBRG7cIeqHz9ZPmDrIzKGXq0nGeSlNKrPzFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779751954; c=relaxed/simple;
	bh=OmEDVj8n9cgNRFAoh+9VyVPY83ed5efLPk42fG7CSe0=;
	h=To:Subject:From:Message-Id:Date; b=WtrGaGY0FILIulvHgCJHpHc5s31XopDgP0iKSJuSSwupmBCIh+OrVz9haZtfC80DIlCbOI5Wa+k5Ru9dJ/5s6Q7LGwvWC9XPO3fKE+nVSENfanJKRNjv5yW9WipcBCrNn7vzrRTgYulzGCKsZ2r6McvkCYUjIqsQk6kGoIHuW9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOMaLJdv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOMaLJdv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC37BC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 23:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779751953;
	bh=OmEDVj8n9cgNRFAoh+9VyVPY83ed5efLPk42fG7CSe0=;
	h=To:Subject:From:Date:From;
	b=pOMaLJdv+qC0dsSo3NNzDKzPGiOhUKZ6kJtfu/ubzrJIobjxmubTh3VbRmeaVicEE
	 nHxC0MZL9vnP4Hf/KnbPeTJU3Oh35WjBOTh3y2MF5Ht0YM+N3P59zZcwqhgAtwKbpw
	 c06h5AtvmW8KMXxAgEN6Yn0oh9+9tD7HhJUqxfAu1GS3J2YQAbWjrlW1I/N7Tgiyqs
	 Ng8wFP0X+LX4DBwDPG2PjOx2BhGFsAyfJU1F2oPHMztlvHM+nR+UdSYsCjqCiA6Kp1
	 F5hzMF+19qDNWPx5LhM6O3HFOtUij+NcbTN1T7j93ZxjsBRlFAtxHLZeh+x6IQkahJ
	 DgbWzQYezErUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3FDCD5BC8
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 23:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177975195368.22233.11822196556156107207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e124983e324abfaca41c4adb54d29226a129621f5457060f52ca88b80565dabd
Date: Mon, 25 May 2026 23:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779751953
