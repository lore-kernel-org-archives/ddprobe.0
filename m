Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4DB53BED6C
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772556894; cv=none; b=FvUr9d1FwSIyibnp0LmkNyQ2K3XtO6tZjI1eUWmn5/y0mdBFBUldRBb5DufPEiK57Dkw4V9QT7bVl47XaRErK5P2Ljwv/82QWod7eW3T4zLSWOSQOO1ra2rH0GKx936l90NYdaQQ/LoV5nAE0/Z032U63XY3fMWvP/QQVNXHTEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772556894; c=relaxed/simple;
	bh=h/b4ueZRyhlm2pHYlMvEpaFZ54o7eLMRD64idGnk0OA=;
	h=To:Subject:From:Message-Id:Date; b=QVfmPSJIdpJWKSr8wnAJqQDgzoQdtJJoB74wYHjyX8Jl3wxEbcIg/rp+Q2JdZLoe3ol+n29fCjbJGPuUbiuVF/l6tpHkkQw6jlI/vXolmv7+Pn9MUupXd7R4/Zd9EfDPZnMoE71P2ga5TV0GTjTXturNjmu+fD9/hajNBKSp5QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMIOifAM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMIOifAM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0721C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772556893;
	bh=h/b4ueZRyhlm2pHYlMvEpaFZ54o7eLMRD64idGnk0OA=;
	h=To:Subject:From:Date:From;
	b=IMIOifAMJeqVclAdFd8F44OchNj7m1IrCV67qXgjYN/K0j4nY/LCuVa9og4ym2mZN
	 Xbx6fwjGf2CDAGEy74r+8WMv7YhYlQfwQIkaAcOMVzn/MwkddHR2ssx5ywU6Lyk+Ng
	 77Gl+y4Oa42lukbooMGAPDPe192pnjsUloZHocPMmPJQlDXIblhJh6fzf94uipEFv3
	 X6Y6yKWNP2h5qT69OAXHpmTZCLwhWRn/A9N3v7u7y0hCHDjaj/iFe0xVS+UqdOT6SY
	 ewbWfiXcUZY4woFw+NVE2WzxJqDd/bi/grhkuOAMv9D+z2BTriSLWVZU1K+H8Pp7aI
	 Jne2eqs2qywzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7577EDA6B0
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177255689366.1401.16913087836807436436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03f7a51126bbd70bd6cd355fe8ad3dee5697a84029b0cda7b547edbff30eefbe
Date: Tue, 03 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772556893
