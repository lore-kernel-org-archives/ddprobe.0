Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659742F8E8B
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788724834; cv=none; b=tltFmyfy5X63aiO0Lrku3IsCeCmV4WQGyHmpIDFDa8NO+abc33mtBOLA3Oc0Xmagn/H2c+LX3TaNXCxIud3FM1SQqpUhmU6xPF5yjpMGI+U7wWOKHDytBPO+vLVbbaedo6khZWXYR5Th9JMaEklJ3yreJgbYs9QTiYu2JIVuJ74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788724834; c=relaxed/simple;
	bh=AZy5q74zw1O4aYk8Rt5HQjSzTOzk2bUBsjl3cgSEQ1I=;
	h=To:Subject:From:Message-Id:Date; b=nkQ/X8u01dBF+e5WHkyRr9HA9b4YXn6zEnuJWmeMSP1HdKh2w/gAFt0zk8IDc+0RfX1KczSSyT0z/FUbMV3kWrA5nKkncq713loW2aUmdB3MyHyMv+vO8PiB8qwPkfWatHNiNIIcvE1Tupy7XoXCxuUGbC0JRzrdJD2Y3uXf3CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7wKv0lY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7wKv0lY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A82C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788724833;
	bh=AZy5q74zw1O4aYk8Rt5HQjSzTOzk2bUBsjl3cgSEQ1I=;
	h=To:Subject:From:Date:From;
	b=U7wKv0lYDsu61NOB1EGA4I/QjIV12T818oh0ALHYWz/RKkkoe2Zrd+Vxb8lD6Knid
	 rVfjNDW/UMDZR+tUs7pxFPVEsR3N46guXktI3nauQZIfpNUhoHdI8BRSLbE2hN0ZL8
	 Uwf4Cj8lL+n+uEpacO2FDr62MbWOPP6H8pBOt2Sb63T4kKChOUgDQMfIsZxtCaPjg3
	 CT12mjmGt9uTOV6AxRbte2ue1c8S3iwX/aGPHEL9ohpnOXLqqzqrHdY9mYoQHVe8O5
	 PJXrY84WWPcvNKZBMXes41YvM+mYxmVQkG98CalbRCBUEvjMjbW3BfYYxRGRgZdZEk
	 m3Zto4wleA/Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE34C79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178872483369.22320.9954846707971184553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d73f638198404653c8141177eb4d896ad2eeecc7be1e2fe9115f397fde76a77f
Date: Sun, 06 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788724833
