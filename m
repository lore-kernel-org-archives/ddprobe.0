Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1F62236E9
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749634795; cv=none; b=C6VinpItPhGqbnc/07q0oWKVuxMq5CTaYu7gp+NBcK0zrgCGyb3jDBsKxBlZLdtI4X+Oe2MEMhZJsloyjvXWRg9CgBv3SbXFMnDZpTKYGX+6g6hfVdEcwGqqjgPZvN4CQ5PQ+3IlrlMYyK7BVr/pC23HunWhkIUyrimp99/+iEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749634795; c=relaxed/simple;
	bh=KqKNmymJTDkQrTdF5dmxl5O6rXPATauJ8RpOpvPgPLk=;
	h=To:Subject:From:Message-Id:Date; b=l/jbhYouPV13/BK/TVGUbCboEz80ehrZJvJ8beOgmmIKRKrqmal/Y5ebk+25F144+BzHyMEFbWzeIWoo72S7qSM9anPHivKzV5MpPElN3GFzyTMtKl4s9bfQvu0IsHAPA+wQiCz1Z2VsHpZ6KwCcNxh7tViwSrzL3LhiCh7ueQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMDqjJqd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMDqjJqd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6494C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749634793;
	bh=KqKNmymJTDkQrTdF5dmxl5O6rXPATauJ8RpOpvPgPLk=;
	h=To:Subject:From:Date:From;
	b=OMDqjJqdQIEtQq9dkKdeY8lQXl7y0Tb+U4GfI8Lj7ahOJ9ZiRv/Oe4TK/RswvcD4b
	 U36p3glBD8TUubjnUWG1f7KSDvsnwHXvOLYRbX21JcAoDZNJgWsHpzGV5JjzGzjOOd
	 flzT/pCXvp3Lo0acibbOkLKCF1GWYMnPiautktLHF7VFjP9X7kdu6PBNbY1l6GR8cy
	 U1gxOo66r0LaMtZlAKhWZRiaUlhPMnP81OhHoWugfqyOqa5Nct1BXhJJ5twypXUQEC
	 sd0W+PODz60FTu8LwDnMjWH31xu/13zJkHPkn/5A8UXtk/gVIyjL/lJtVcJfkn5Uoh
	 ZIefyYsJkKx7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92728C61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174963479359.14542.18296624322756285196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cde3fe9f69e250825ffff926eeacc063ed2f4b048e4dfae4cb9e399935bc4b6
Date: Wed, 11 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749634793
