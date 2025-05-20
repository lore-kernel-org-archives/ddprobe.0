Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B81E25B67E
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747721994; cv=none; b=YJ75wjnquyQeK5eLuVrsNrxLON0JN2yzG7tw8ELlLA9HGTg2EZ/JMbj3D5rfxbye/M2Id8vZiFg1DL0pEbJfIiXVsQEssg3ivJ9Es4464DmF27vYjKz3BKwo8pjEhbJvGwN6rWFhM4CDR8Of93u83eVpLdrBVdaie9JWgaT/LBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747721994; c=relaxed/simple;
	bh=oP1+gwJGX1/PmLN9tE256MEUKXhR+Qo7jVH5qT2QfFo=;
	h=To:Subject:From:Message-Id:Date; b=q8P935xASn6VmUk115DYbOuITA0XSriRSoWyyEK/4cSF4dIIQY2cRzJm8QCs/TZblif8d2jrqbaMOi41IcI0tzHpw5mKLM5unn29pyzLWO20NZiWK9BhTaa4G4wtqal/DfCSRnLYN5Z1OrBCkLYNFyl2bkZH+tIXqeOOtDw+tFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uob2xSHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uob2xSHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47D8C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747721993;
	bh=oP1+gwJGX1/PmLN9tE256MEUKXhR+Qo7jVH5qT2QfFo=;
	h=To:Subject:From:Date:From;
	b=Uob2xSHAGgtvcm9mffoj2ev3wT5X34vfjOyVF1gXMvL29T2I9WxkI7FQo+iAGdqTS
	 SyfUDEI5yZT03D5qMQXSlTCwH/VrBlsiKou+QLB7kTRVf75VO12mG+xVdVw9PmbWo4
	 djiEHj8S2M57pf8SRPgHOv/2XfCnWuunm6Aytq8vJUozbbs1X5mSdXE3Yu4DLfPnfL
	 TWFuGg1SxE5b/32MEn4aEerrhOJY1U/OrghzYodqMGt4odrMSv8ms4fqAFkVmzzi2z
	 HBArN8FtcUH9ghiba7DnRpoZTaJRoTgU2SLk0vrBCTpQS+CewGLUm8GZsyUlXul8Qv
	 VNX/pFKxAF7bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F23DC3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174772199357.6297.15218433508430057085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac7ac2dead05ba7193222ac4d041a8179a3cda2d852b3b2c13502abeb756fab
Date: Tue, 20 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747721993
