Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5F73BB4A
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786869634; cv=none; b=ZAn1Uam9zyXiMRz2m+/vXLPTNskQNi8PB/NyDkyv1V87c7u0vk1tuE+HuCwpUVviOVR1+jwKz71EbPwehF7dCg7W4pyROyOzekznlqAlkWPyCrBmLy3eNeEmvyN+MbKYZtjNFlGwl7aT9HBvh+gCRekOrAd8CLDBcaT9kkuVlDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786869634; c=relaxed/simple;
	bh=bpE+rvKyHQSa/6nVIg4y8LGhJ2UXidFNVPp6UoQ6hNA=;
	h=To:Subject:From:Message-Id:Date; b=m53L70HlEg8J4uTMlhFMnnR/e0dTPE+mOfqScvLncHvRZJeh1XYVBm0+FBi4L+u/Io7/BHJDKrhrqAZrWIgAPro45aLsRA0N9vuHOK0ZEt1qtdICR4QCMa/zJZPHlVvWJMmy1bw4wLIfxM6viw4i6R3yFvlZEJNqTif1YBbw2O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgHLOiyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgHLOiyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40B8C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786869633;
	bh=bpE+rvKyHQSa/6nVIg4y8LGhJ2UXidFNVPp6UoQ6hNA=;
	h=To:Subject:From:Date:From;
	b=QgHLOiyv/Rv/kiKMsF9XMeVB2lmqcNG7LpFZDAVSyK0GJXcG2wbXA3IcYhlpvlINd
	 IbImyhqv9hEgwG1rPMBc2ZDSyke3xy7812HuxNHm3lbYmORXSU4gVReY8eyrvmbnKs
	 5FQ+IOu47xL98smbup1Vv4xrSwxyY+GOgDgD5USXBwR2zt7+tmpxid6OLs+NJkZ3e3
	 Dlr/rp2K3JYZuGzveHPfTif/xUXlzHPihv5vUkdvDGX07JqV58lt3QeCCBZxZXsMSs
	 DEc4xjaJpYj9rtdldR27X+/26QYF5+n6w2N1bTRbVrS3EDxI7Gtr77DXJwDIY1U9q3
	 Ct8X6CSrbct/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0983C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178686963368.7801.12828702892501521546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ef3ce8e1cb72ba578dd695afcb6e94cd2bd063b03cc7d619e50681d637084bc
Date: Sun, 16 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786869633
