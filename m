Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3423D1BFE00
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747430394; cv=none; b=WyBPD7SCMfVfpOIFro/DEN9Cs+qMSljCv2I3yBQRjZYtJmRc7Wd3zhQ8H4c5Bw/6sGdQX98AVlYihps+A8SgXZAx7wF9dsanOlmIar2aXCCDKxO8xxGHV3mQ7EjJJA+ozfyvf/9P+1FbTJSLAz+qnEdh+kVI9j+MH9aOavgWsuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747430394; c=relaxed/simple;
	bh=4y9GFRoMeA8e7zDXmcLQiaHSinvLpn/XmmdguTm8G4E=;
	h=To:Subject:From:Message-Id:Date; b=ZOdDIVN2nV8CmLDr0KBhPJT6kt9wyhsUpOjVlzT0OClL1J/2d94S8FcQCG4qUZuxyVXC2RvJrcdx1ACOJYSo2FfnubKl/TQL5thmuksizDZ0aU641xfblswSfN8+DIoY2wZXkQ1lFo3Nm63CendxYhOAporG0EtD7wmUHHtOCCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jN+kQpZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jN+kQpZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6F0C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747430393;
	bh=4y9GFRoMeA8e7zDXmcLQiaHSinvLpn/XmmdguTm8G4E=;
	h=To:Subject:From:Date:From;
	b=jN+kQpZQJm2ePU+pk08o7/p060FPaI0EhzxHDFPGtp6eR4TxYppMGSyHAAYWGbaiW
	 eK9ksGJfeFPbF7r8WrLT9QaAsRAW/VYgnB0IJqsUCip0RcwwP2bPUYV4pr4BLUxu+3
	 FJqATDrIIK0iLhMuMfCVV9uvbIQ0jcdx+N65ypnf4wdVNauLmSI3IleuRI/NgBplwe
	 N5cwHui2NxyPsYPZUi0y1LPJQ1ofdzci2IKMJN/vbjh54XXYpKjvostZldLc4PhW4i
	 PXOEk50kYu2jiNw2C2kWbBjHor18vxU57yiOy1wYlwDKFYxeH6U4m367eZ1rLUVExU
	 KPw5Z6xppuXZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE0AC3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174743039357.3001.7618315775159089045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f049547985b0c3f62fc05f536fb12607bab69d7672b204668e9a6fc17bf15a3
Date: Fri, 16 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747430393
