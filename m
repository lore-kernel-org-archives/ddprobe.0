Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B1061FF2
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743878394; cv=none; b=L/V+T/fd0p1meT2L5NVZEtc1fdKBv2EBLKP4uAz4J29cJ6XEaxrx1gwWHxV08SD/bZiQetdfZ6LfvkuC4ut1lvDnUeXIQjQ+VPNeHOPyuZATMyZiuHvQ5fhQU6LUJeT6Xqx6u6eYwHi/g2TagGvGrYC3JzoCjYNj9RCFgbI8744=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743878394; c=relaxed/simple;
	bh=ZRBl9dza0Fx8Zh9TI8NEjX7B/u5d6kHoOAEvnT5VS1I=;
	h=To:Subject:From:Message-Id:Date; b=oJWw0oNsjyAJjLvSDCAAejsZmB1e8uzRlCdK9JvvZJDSir0Sbd2N1fsGIyLhujzHwIb5iJ6qagqplhHoHoxRr6JHVUptsYpvH1KXR+egufKOqSZ4pjslnXY7WLTyY+W3Q+f0bS7sGFT9ZuwJtYqH6PLe2mjFiT+aNk5+Ty2epfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gzd1lqPo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gzd1lqPo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B117EC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743878393;
	bh=ZRBl9dza0Fx8Zh9TI8NEjX7B/u5d6kHoOAEvnT5VS1I=;
	h=To:Subject:From:Date:From;
	b=Gzd1lqPoPjOoqhYLsIdbEqF36XzBMPHFdIp++w4BV/dOmofYcm7uMziYUqSQ1Y+RM
	 XWIdxV1zEOb00gXFxS6Hg9cM0E0xKkxoN/2vg01fOb6BIsNlTa1YdrrehHDGM5rgJD
	 peFnQ6bCWT57XrgqCljxZ0p6k+ErFNqy40w2Thx1THobk2WB2HZdHXUQqVI7qasMFA
	 2LwUUdNyCKnqJDiAzQQzyINDMOBRpaUJyk2q8vQowxxc60BJHsjIQ0z32MJL2NIROR
	 9AzVFngSOcxtvLs72hB0LKUKFN1XFQS4BEwMyvRrliCRsCY7TTXoiPoA9TS2+EvK2c
	 bSm5KpSF7VXkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A73DC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174387839362.4263.3120463826936771908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2edc596e9badab03a05e3608d52bb567b2e3d35fe1c6fe346a10270fe4ecc8a8
Date: Sat, 05 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743878393
