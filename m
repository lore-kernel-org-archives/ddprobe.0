Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29ED330FF20
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 06:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778998834; cv=none; b=r6CJKQ2ez5g4Pm7uMLzjQi6SonAeS0xbOMwWZJ3Nb0RnMIpv0i7FSl+hryaXM1nprvLFcYy4zmZ1ibsYRDwwqAfpA09KaQDJX3rhMlqs5fS9+sKvuBgZIxp2VF44a5nMJI3hvQc3J4DeHd7RunHTC5Jlmxi7WEA+lfECyxgk87U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778998834; c=relaxed/simple;
	bh=bMdp6nQUXq9YA1UlPkOJStdpHh9Wg2v9Ece0MdsQliU=;
	h=To:Subject:From:Message-Id:Date; b=L6zy8cQ0Jro5DFVzMUINF3njyxHuZY5YHWd6jDkXmakfRWz+Z2DaWtCrduhhzZdOQDvcVk69RATvlsoB/ka2ktrIJaysKkpoTcCLd8LkCy2MR5pgXklOgA0HkoguyLsI58l33NSuxLvkqWcp7r+tR/jL51wkBBsUMufGKMBudpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gt3kUk6S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gt3kUk6S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF723C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778998833;
	bh=bMdp6nQUXq9YA1UlPkOJStdpHh9Wg2v9Ece0MdsQliU=;
	h=To:Subject:From:Date:From;
	b=Gt3kUk6ShmR4KG5bG8BonMjcBxVmbpqQ0tlRpnlXavkV7DYDYQ2V0dnIYSNgtTvWJ
	 lyXzjhVygRpt/OyrVdN3HBnsBzzmXWXbdLMFHW0Y6QmnCym1xrDJdI+j24Nm59gcW4
	 a1BVg5x3doFLhHiO7uw6LGRogDGG7dGgKDl9biaPUaQIHyEM4gZKTtUdUT3DiTobQi
	 gaJVwPcOBtIus+cfvfToBQGGxZd4SryVI8BkZXjAbAWqwK2oogF89BIqc/+vmWIX3U
	 WmaolGZs7K+eXHqv1lRRNeUR8RmHwnuL3sUawJbs1mvMCjhS9bUI7I8AwRMXGwXz1M
	 3dbl+Xntk/DSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB19CCD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177899883369.21599.14590070307561523924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5df74a898ed63458ebfdca6c18907ff7a8d1aaa1694f40d6cd72a86ececb2edb
Date: Sun, 17 May 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778998833
