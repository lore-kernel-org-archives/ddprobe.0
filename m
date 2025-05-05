Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA4BEAC7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746449994; cv=none; b=FIcLplJ8m89shdfc5ZfA8G0/gNHtGYDjwGI/pn5EWoBJYRvGUTeHar9v1FokuSwyr5HK0eYKiK0YNSkv3oK2SiuDgmxUXWQklXTuJHu9vVDM4L1yRpU6LCJ48BlD6EwpGm8JelDIvR4gTyeCl0sOhAkZYf4lSVtnayiALshUrDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746449994; c=relaxed/simple;
	bh=Mn+gu5UJOMXklKQxJq+V5wXKyIgDrmT6bo44gMSC85g=;
	h=To:Subject:From:Message-Id:Date; b=MV0HIfpq9xkrMRbud+TocdwEoDDfSMf019IEBsmlcniCjbgW6qyndpSVZz4RL8LR7Ogm2NZxpc9HpCy91Kzd+ziSU/QYsi2ydGTlsLmdBWp+3wBbEniMbL0OB6l9L0TcR5U3Jnx/BS9mZ1jbswXgMokWmKY+738Dvv2f2njSfa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrhLgAGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrhLgAGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E068C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746449993;
	bh=Mn+gu5UJOMXklKQxJq+V5wXKyIgDrmT6bo44gMSC85g=;
	h=To:Subject:From:Date:From;
	b=HrhLgAGFwfZW6d3oi86n6IkjS5NmKdN3P/nJgi5f2GrjeXXhhHR7ir2naLVLbeku7
	 8uS3ga8IE7KghSy4f7rjK3ZLzXKUcnL8pxlkyli2SarCiA4sXCGHJe32Zrg2oDT5I/
	 E66KWdt4pgjMPHyTl1qU04eY8wumj81iQOyULbxTBmmreN6gp1VXxHwWDwAf4n43C9
	 wZuVfrUBDqDEEKxJHwB3gd5Iee5Zog2VcZ/pWKuej28VHWZa3DIGdWQ4bCjZyUvkwN
	 HJAZAEzqJemEggx4AvphtVd2A52qCc+sQasO6z90YUkMTZncBeFZox27WUW2KZBEJo
	 KLiPGP5+6tqqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF89C3ABAA
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174644999357.20597.10271995602483503837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e57145632ffd9336c046814c84e5a2340fd31b161fcbbdf3720ce4333455f907
Date: Mon, 05 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746449993
