Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD081EA7ED
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743547794; cv=none; b=VEAsSmLQw83yxHrPqScJDomepiixw6tBz0/+lWOQixQRg6yziQsErCmBsIgJUYcJnMJvvPavkBRQ0BXpUOiBLMhW1eMaBYSYwmInBFqN5j0V2PtDkHq8EOkR8oiS0uGjG6zmvnwA3+orbHvK5OntztumNJv2vCz1x3R+fOP0BEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743547794; c=relaxed/simple;
	bh=vkWLSvAwAMQv1ynwtLIqoet1N6nIjI18dxfqC21xJXk=;
	h=To:Subject:From:Message-Id:Date; b=b76MtPxQFaVlPR6wLWsX+BMPC/+jujUODwehyhiFYTFl2W/bYj0d/Las0xwqSDEGH3rUc2jO1BGb1Cv9nZfq7qQeXoMaMWHiUY/UzIyIRnCJ+29sYnnWAEFH+yhUbpUDiSpJcLgfbz9LnGoRbjdnsw9d6wxhFT1yzKuPMBp8q9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sxsn/Mtv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sxsn/Mtv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B272EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743547793;
	bh=vkWLSvAwAMQv1ynwtLIqoet1N6nIjI18dxfqC21xJXk=;
	h=To:Subject:From:Date:From;
	b=Sxsn/MtvfdHKsNx4AHMh9+ENvO/6tXr6BQ/rGHR16mFkW4fo0EA1Mpy+3SvEgkei2
	 F8iQFDwRlTNGIeVxfPZDkgtL5s3OoVJD+frjCeeB3rsqodUWntgMpRAaNm8utlOXm2
	 vXIfuBEim3nldF8zkZwD2doLTI3CBH64qG3X+SPKshdC5RB6MANhKvw5sGkuWwVOOG
	 yYgS3LRUTjjSUv6FJviWqVLPsXKk8iq+td9Chzx0fiFJF6L+f93k4eYpMcZHBufifJ
	 bNrEF6CHxb5PHsP9Khw0nyh3X4PyYdytgkNzWCpPICAcFfXkg6hNtszVw/aAmw1TGd
	 vD1Veyeqh5pBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A18AEC36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174354779365.1423.6446157223578840655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 638b4a31697e231a0a5af211744d17ecd6826984abce3043297c82254ea077b5
Date: Tue, 01 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743547793
