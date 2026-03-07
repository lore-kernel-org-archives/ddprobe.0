Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1700A33B940
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772867694; cv=none; b=BxOYR+IEqph8OxvgcfmicVH+BcY2TkdCE6dS2F5n4A+QUr964Yl1V5GLDExU2Qrgn4TJgz7UP6EQIqemAOau3AVaTvDRfnq+njjn5LKwvxF5bbJV2hx6L7Dl2Y0M1bthNcZzLhN5Yed2LHk6Q8RbfxPcfff7dC7viMBjin9j2Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772867694; c=relaxed/simple;
	bh=RiRANbtKZwUFACXt2Xng6/aNw7AoAjnEC0PR1+EIRbw=;
	h=To:Subject:From:Message-Id:Date; b=EgEpF3YzBZYEhpKNLqfizpecMJ20OiwFTb71GtOewnsvGQIkDG4oBa+sPhj6jGG/ZI+4DrhV4ic+/4CSN3MBHWvhZeSxakv3okLhlCA6HzW/xf3UxIBAs7AJsE3VCiEJB85nr1H3mksxaRp750z76g8Dkhf+886OZuSop46g7xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATUakZfG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATUakZfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B713AC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772867693;
	bh=RiRANbtKZwUFACXt2Xng6/aNw7AoAjnEC0PR1+EIRbw=;
	h=To:Subject:From:Date:From;
	b=ATUakZfG8FYkhgfxau8d166bOHMu1CbKRaW7G5CBsbWlFYWVxq0OXMY0R+fZfvFHa
	 p6Q3TD+ykgMwCCTe7qlqSttGVOGi9LvWTc6caOHzwMID9JFmnNMrAeTyB+17wZvesX
	 ffptrs9XYv+bOSzAsm5KravNj2vxrbD8SEc3KqzjVZGnVGJGyLPdZuNYAQfU1otbZb
	 iXfV3v103oGDupd6GprstwSlTNfDnC4cZRVCYbw4/ywjPJe+EiZoFTCsJUTjLX8KS9
	 /YNvuxC+VAQF7/OKsFK5o+pWqTJWTtbcRMVoiHOIYV0+fOV1RWWkWq3SE4tJlG/dkH
	 DQqPXRVvWST1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D77DFC9ED3
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177286769363.6541.9991352532523234134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa19f3342febef77fe3bf54a9a70353bf7ddcc75e300ce67799879e7a0a8dd7
Date: Sat, 07 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772867693
