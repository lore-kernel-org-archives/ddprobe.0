Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2141078F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734052554; cv=none; b=pxYFZB5WIr/WV0wVIpcryoTRMRBT/ThSEVSqmh/fnW2R5lQa9xNfHHleBcaZtv1HDb+4Hluv7sSfkOkSCMr+PsVFY1U2bpo2BdQfJwtUs+2Y0LLA4+n8E+MBiYnfKGTgw7QMpoNp369Pl9pB5DEUpjF6oQgHHp5TVE4bFz2wL4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734052554; c=relaxed/simple;
	bh=eRQtko3ZXEVFVFazt1ggRn9jk27LvGKeqYN9MjHYLrM=;
	h=To:Subject:From:Message-Id:Date; b=R6LTsPcoBsdcmZ35nSJ1pfV5wyQW318pWL6Y8wqvBQgzguDmUZiZI93rGVc7Yfx+ZF4dlvcTnOuVCQSSdbl/+lsTSixKuBedh2Iou24XuAWEM7gZsBZgCu00HdBoIKSfqLnNtQzXOfqgpKks7zAfxNbrj8hZtqXXA3hPMjhNMBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAwt5EB3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAwt5EB3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D0CC4CED3
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734052553;
	bh=eRQtko3ZXEVFVFazt1ggRn9jk27LvGKeqYN9MjHYLrM=;
	h=To:Subject:From:Date:From;
	b=dAwt5EB3RFTQ5p1pYendAFlgI45zeKlKmIaflJYXJWESyS41zo3soC8eOe74pGFJ7
	 qvAmPPXSYv/hg7r+X+RtogZkZNnZpzWQrOrtjZcrR4xbeaDZuzws8N5gntWQ3P3NYr
	 X46KxYLXp2D8SQcL9m8uNu9PzB9XYGmGijveTd9xi/9awYa3wFX5dWf1uO0zfkQY+F
	 0rKOCOSt/ZPB99vJQAbYaDmhk9ZbvwRE1+M0uZIvZu1Nw/I4FhLobdF6Xk2Efm4EfW
	 JqkN1VYizeuc35ncZffjctOTO6ANcVAfiJqTl+4tQFKDXZ9aQ33O8iI/NH/D3BGcKI
	 VNwnj7LZQ/KsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DB5E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173405255359.24947.1737799506066493349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7de2732de30219ff450f86539b39490ab47fc63f00dd0d75b62bc2fa2153473
Date: Fri, 13 Dec 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734052553
