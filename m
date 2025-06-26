Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA532620C4
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750974594; cv=none; b=pUl+kWM+sq/s4aFrEmlov7eK7ZjJ49Pp6xUq/12WkNnAnAB7kzNlIunE23uZNAbXMs+eWfG/00/JdSv7nyFp9bILxhJO0ACns8bMGGpbVrRbVAXSuiEEjPDmPEVPXNCk5+KYLKllyhlkuv9fON2rtbVA40l90CjKmAX6wZXykLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750974594; c=relaxed/simple;
	bh=0S6Qmh8ZtrLTM8VonYG0uaEpXLm+0hYYf0FzgwckIKI=;
	h=To:Subject:From:Message-Id:Date; b=fwEBUSooxY2wkx8CKmFZJ15bX4bwC6WCiXTRJUcQFDh0a6ZPc5LFYFuAK2nRCAylf5/KAWepjd1DSyckP2WU4URi0RhhsoWIIaCEAzzUpAO+kcvf5gY8jeOzYVXCC5UVgqTvHz0fT9wdfymNWlsLcBixXs9kslxr2fPMjdyXB0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oilv37y+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oilv37y+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0ADC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750974593;
	bh=0S6Qmh8ZtrLTM8VonYG0uaEpXLm+0hYYf0FzgwckIKI=;
	h=To:Subject:From:Date:From;
	b=Oilv37y+JxvEahyAqLyHuR5aMWk4h6cx1um5x/WytheYayPOGdViV8WSP8PYI/E/g
	 VpPW/49OPAh2ncpbyAvd1mZI9NCg6aCz996B1rBoRsS3Knz49edKod2c2I9Trk4VFq
	 sCrVFxcAbJmkICvE4+1XIkFmbsfempWMYwNyNvU7K34eb9ELKUBxeI7PtzmX0dHtpK
	 YhwqNpx5IyBnCTUq+51mGqYh6PRr6YsAi6tusKems/JO96ZqWaIqmcvKB+3L425Fbo
	 L+Sm5rFBFk/bPm6NISP1iygDnT63aRBpFHcHgGLfDtRE4s4J6DEPIv/ikCV9qImy6E
	 XaalD7puJXFWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9977DC7EE33
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175097459361.17722.9728805210938372764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09438d27de480932b67b4dcd93ac65761d36dee212083c5602626f07a410cf8e
Date: Thu, 26 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750974593
