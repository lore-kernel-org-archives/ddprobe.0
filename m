Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AB83BBF2
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748155794; cv=none; b=ewOY7CMeHq3aMVBH1XEFKpQRpxiC86kKkjysAiKpDku2opKRTXwTXIr0OLoePwdvoyDB9oHc1vmFRSeJme4IxjLOj4X5HXwVnrsw4JUJWLEDGeesfRP/ZGEqdgkp/PGWpE+NT60wVNCRXLToNqw1kg4dIdZ52y3WyH6mHX5gtzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748155794; c=relaxed/simple;
	bh=16JYdTd1Ym6CS+Gc/g+5ISub8ZpjeDsp/L5G7rrPUcY=;
	h=To:Subject:From:Message-Id:Date; b=kcmVcWqA0TnxeGb7uIC8m9XU9g7jVJg+DyX0hDXipC51Pcry7jUHAF6sI5alZGCUWZ14sfam74zf48mac3nh8e72jaV8gdZEiR4pnzEs7RvpAcRVmh1ZIPitYN1Cg8PXeSJIhUOADMfGT6IbHlr2Hf3FH+LlUwxifcANayUMNus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmIcfJlG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmIcfJlG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9D0C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748155793;
	bh=16JYdTd1Ym6CS+Gc/g+5ISub8ZpjeDsp/L5G7rrPUcY=;
	h=To:Subject:From:Date:From;
	b=RmIcfJlGJJge3/XxAqf5dbww6oTvGMNDqY0pe6pxeVTXesu+LjSQkjzIBcBJH9+wO
	 iX3xSN93tWq4CYzzcmb8JNbp1/x3d3GckicCCvOqqCfhD/nm4aEMn+1+K4LqcF2SmH
	 ynxMpqG8CJoXK6+MOCJnP8npIdBAJm2ym9bZcciXAe32PaLy+3Yd/PoBxP25IiOxqM
	 dRidLxXNnBB0q0w+amHfiNLtUbxxIab2tkXjNaYrIIEWmMQ1So4PEjVgFO2IRgfkZb
	 k0DkdwL23vLkRDLnEd+yuMWgdRKJ8qsG2snKoyyNeSSIDTACQCiaLacxbcwbyqPbnK
	 8hKFvoi9RLrWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989EDC54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174815579358.25654.5463493234722284476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2550c71388548e145d644e854ecc7de2dfb68297d1367d73df94874c463b75e
Date: Sun, 25 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748155793
