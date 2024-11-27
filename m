Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF731FECC5
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732716954; cv=none; b=JTOlXsNYb1FrL4xXrQEk2Yf7NiODKhN05COJXXbCjOKxkVn3ICB0iq+DDm0XfH7pw3heuf1GBSyw3KpIAgdX7Fqke4MCNHj/Syd6HplSj7l3ytiwvGfVt/JT37YrwzTC4FEueppI0DrEYQWX4L5GNEzg6QceoXNVEr+uwUh7AHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732716954; c=relaxed/simple;
	bh=HsGhnmXHAhd1NqyA3ZN+s66hbmbeSFIlpg/tSr/vwGc=;
	h=To:Subject:From:Message-Id:Date; b=eMqDFBvMGM7rSUTqREi5mG74dz8d2+1gWAvWQXoy0zQC6+gg1pnwOzc9I2GxhDMG63dKQ+ZujM9s4sHBlQtl3PtMFWAuk7+kLx/wsiZUj0757gIyEPKI2zzt2IyOwEDCf0evDPnxszIwZf/r2GhnGZ8T1+LnJhaq+EUUOLAlhxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SqNCTHab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SqNCTHab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B61C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732716953;
	bh=HsGhnmXHAhd1NqyA3ZN+s66hbmbeSFIlpg/tSr/vwGc=;
	h=To:Subject:From:Date:From;
	b=SqNCTHaboIucUc/1Apk+NKmuPWxcKgicT2h9OOH6P+uqZBz16e0w82XtkId5VUkyR
	 e4MdQHgE6O2fZoQZiLkysbNCFesr1WCxuN/vG6ZaZwCDmeECQ7Clyc4yNZuSpsM8DK
	 h3ULZaffRtF68C3ZOkXrmRPo9CNXruO35Yey4RgW0v4mj8B2jkYxJ4lxppdWIRyB5L
	 /tv8pDBpm4JLwt0Tjv3RtYxGLG8vgqSPzEFyNcMOJZ/HAvQ34K9A+Wa6FOtrA+A877
	 2r+S6kO8t+9mKVoRQ/wVIZvEFfktQYEOVR4Pz39r/MTKSr6ck3Xkchz70ZoM2Ra4Zc
	 SmxmGyo0ULOeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CADFD6ACDA
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173271695362.3050.2634709690629488049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93614da7b48781ca458038596689b9054355fcbdd29603a69c24f208a7712227
Date: Wed, 27 Nov 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732716953
