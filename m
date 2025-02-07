Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1E2A175D5D
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738950954; cv=none; b=Hjne5/B5GB566exhNLe0I/WLkC43oJrC5g4yVcgw80YIqX42T3bMpb5tolOQFoQ+cKJabq3/2G8m0eOezaHjRVD/+Jkj09uuFtuIDo71rLr27biTmnPFJ+DFAoFacoJmRn9xUKCj9unFaa261DI8e1vL5XFazb3K8pUQ0/2xNts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738950954; c=relaxed/simple;
	bh=RP3Dds17HdOq9EHCZZjLmvWTx5+z4ELpr9oSyKXpyZ0=;
	h=To:Subject:From:Message-Id:Date; b=i6PUYmPn10p35UqkE+ywylPqHm6NFqAM4jZQRO+/wYEzBBv1N/htEbKAoPo9Pf96/oB/bNmyWx5C03UJl77VUBUIRUi/97ostpXpp+siZ96a5GcdW92pJusRpF8GGZnszIyJme3l2z1oqTSB9FCF76Ls51u/QN86th2MhYXZgTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSq+lVhn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSq+lVhn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B64FFC4CEDF
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738950953;
	bh=RP3Dds17HdOq9EHCZZjLmvWTx5+z4ELpr9oSyKXpyZ0=;
	h=To:Subject:From:Date:From;
	b=SSq+lVhnRJNyidKHjEcjolK/JFAqCD2JVAR4D5hFpZo502j/Mh5a485y7qPdiNaTY
	 8X6eakB6NkJ+CDnFxPGlDDzXwiY0Wy8fm4Et24CSB5OvPGOc2m1uMlzDHhYhOeDzum
	 T/3TYggvO/+vquVRILKHaoj20kMKAoacxKiD1XWRPT8VETerJvRVz2uk+cFgH9jF6o
	 ZcM2Rop+JYVtEu2zKd1Hhgm6HI+iEhg/38RROdi/ZkcY992TZ6GLsah7o+IUykKMtW
	 nwy0IP0+VPtQp2GfkhAWmXmdw8uBNlCRdbKxRa77DHlhPl4V/WoBrR85JOMcJZXpBz
	 WLNdMllTOC5Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E50FC0219B
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173895095362.9586.1973665816262615323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e6bf194445919fdaade72f947f41de39e9bfafb189a359c24354180618c146a
Date: Fri, 07 Feb 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738950953
