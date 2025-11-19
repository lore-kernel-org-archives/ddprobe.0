Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A532FDC54
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 22:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763592714; cv=none; b=PmynXMFhBM712PgUAzM+7gfx5JwdkTXdMnfrbJjb3qKPy7Xuy5s89ZrDRnwQPLeCDVG+kcobCrEbIVR21bQSi4D7SU1gzvR0n3wno1Px3QPZ9DsD1XZnLg801tUf6PlLTmadfKXFyB6nbHm9wBgmyjSsta1p63e8I+/fmhe/6x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763592714; c=relaxed/simple;
	bh=+5mYjIu6e14k76sc/Gba3wgUr/O9vlzsF9m+RAWwkPs=;
	h=To:Subject:From:Message-Id:Date; b=FVRUbF1ymR55baynPRDPT2CyK5oNhQHrd89eGuPscQk6a9Bh4OFRXnr4AEyOz67KzW9/AUkNPXLQHJeJPjga1Cm99Pg3qBTh/esmSYATTuqaDMzM45/S+38FabegWRQg8Z+2XHrO5+I0vxrwcz9RJP5RpBwJZ+OR1fHcOvXtf0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+FPbvP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+FPbvP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B87C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 22:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763592713;
	bh=+5mYjIu6e14k76sc/Gba3wgUr/O9vlzsF9m+RAWwkPs=;
	h=To:Subject:From:Date:From;
	b=H+FPbvP4T3bH/CP4Mil4rHAKholS7u+O7H0gLCfEzVkyzT4jAhByfX5NiQPsDF8wT
	 s5JeMGBpUnttSOKYhJPdg5Kor4M/N4dOTzMb5Ja68pWpBGhccDpwUbiDBDkXaVL90S
	 q9d1rXhh0Zek8t6eTmq3LUZomkQjdFZxDbDWrRq+4x8azQ5dj/CFd/71H7En5V/Xbf
	 46oDOb6GiJHvb3Qd2VninbxnAAatXojQm/U/3KurjCr4RmmOJ/C9NQxQJKlgOAjOjh
	 pHCXoOJ6vLhFa3hWSBw3+l95c19GcvQ7L2bJbczJTO7fj3EIOzWqSUxOQMPJNTn8bw
	 NEa9Ok6lNH8rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A7DCF6487
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 22:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176359271358.22412.3405115909165712565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd71690a69d57b34068e8ab90833c49047aff93ebcbab523a925682d05ce1959
Date: Wed, 19 Nov 2025 22:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763592713
