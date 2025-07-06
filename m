Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CC72904
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751777994; cv=none; b=ih5hrhpD+LZlw9OjHJgwaNZH+M0DgJDakcsQszWPZAQ2L9u/XnxCRlQY8/O9QPGGdunp3UYODjZyA3XMXCQHqkOjtIWehLrElzSpEu/58GinZpCihm0ei2VEWS/IGJBmvIsxmYHRbFvNSZTHlgfU1gC+DwTl1L3yLzVrX72z1MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751777994; c=relaxed/simple;
	bh=r5yvBHCogaMNWNLt+DCw09Zuz6wh9S9OC5RG84iIkLs=;
	h=To:Subject:From:Message-Id:Date; b=giLzoyknb3t/01QgRYqwVJvumDXRdbY+rd6ZDLY/siDbWPUCpHdqt0+bKgfAF1BJU9pLy8uMg1y3eTkWeldJtqSd1ngZY0fHqIyeAFJeGbWLb15gkjEmrwNv/OOQdDyKxQflCdQT5oJbviH1LRZFnV1G8Is6be46VUkgZqxEdZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6uFB1Mg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6uFB1Mg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4443C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751777993;
	bh=r5yvBHCogaMNWNLt+DCw09Zuz6wh9S9OC5RG84iIkLs=;
	h=To:Subject:From:Date:From;
	b=M6uFB1Mgj9J1soH8QagkVgH9jKnvulKaUFb06YJRDio2Pn5CIrXalI83Mt2w+1813
	 tIwEk8yjGfyx4YTSxk5Xnmq8HpVkj224jn8suO8d9LdDixaDIyAQfA03RlLtA6s6XH
	 LRZ8nKZOZa7I6ViOFIV7A1+4iGz7WQY3PdIOaq/lcS3gKvhojtCsyWqOAUdizxQ3qt
	 93ggTuDbGcwzN3UP6STYKnQ3r0VaQV6nwLOStQ32+ZvKMW6Tq36WCHqrvSfD2uYprG
	 JTKD/Wenb8P5BQkKhw5ffnQrBkGi3aPE/G9XNED2ASxWhNhEbz9pJNzmaU8m/TK5m1
	 OMXDrgi50rFnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914BBC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175177799357.4733.14170032243861123172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0745f1debf203f88d0f6ad085470fe4badb0553190f03e341facbaf04c290ab
Date: Sun, 06 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751777993
