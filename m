Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C131291E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 01:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720230923; cv=none; b=iNVCRYQ8fJbMd2sLWqb6LnqwX1SjhJsmVCR1ZUKY++RPATQNbS6XlfZ8LUEDp2FyKqKE0aq/QuNKNRqzBNca8u8PaMeSrIdWe5xaTSEbGVm1q9DEBxovbSPT0tAGSb52FW1tZvRcsT5uMkhU9w215esoLoXKdIDHWNS7y4YVizE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720230923; c=relaxed/simple;
	bh=MN0Er4B3Ybj+Zw8sDxToLza9qzs8OGha896OIG3uY4E=;
	h=To:Subject:From:Message-Id:Date; b=f3mltMQz8Dp3IqzXDiOMzqc8YarBkYmj7QLzyDNPvt6DGxzeOFdMUZY9ghN5NoYfT200NfDeWLk0PYJoUGigqEhq5C9YKHisqIAvCNST6wvJwhXck+qvAz3Dr1wRjQjBXXf9/3BIic84azOJM0QyFfUtXngOwpktoeFMujwzKKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rm9sEKVo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rm9sEKVo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7F8C116B1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 01:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720230922;
	bh=MN0Er4B3Ybj+Zw8sDxToLza9qzs8OGha896OIG3uY4E=;
	h=To:Subject:From:Date:From;
	b=rm9sEKVohx6OxKK3Cv2e9VEJ0A+qlyIAv4gJA5KRD4L159E6OWs5n8DTLF46wpvEs
	 geQ7a/XdvRL8/t+/Uf30qf1eMMriFvkoMW/hO0xHwgm1oPhsH5PwCZqnMX9nAprvhQ
	 6lE61fJJ+m3B/JszjZ6gzkH8FlYFODDUzmQvW5+VIlbJGXjq1TA3p/35vPkW2qUp8H
	 JYh+VmpquFd9SgVNRotGe1KB2rxMpWv/SeotFlq9XLgxTzzdKOXvv7xQIHs3LCZnd8
	 zcjLX+tuBPUUSA9s1n6gZHNYsAaXKezSqayeAuuBB2pCx822pol5kOc9N4MxCHC5S7
	 RxsJN5VCvIoRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4808C3271E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 01:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172023092279.5557.77814292414876683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34b9b4d5ae032532bd26d88b228ef1275ca3a166f10fc45ead691cbc92a664a7
Date: Sat, 06 Jul 2024 01:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720230922
