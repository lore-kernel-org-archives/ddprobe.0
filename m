Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B532F60C4
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756897794; cv=none; b=Q2b7X/4EQaj0d0ecuGGnEnlQAasKGFO4SFzr3xjQvGH2zg54Qz9X8U9vrNrtA9mc3hhpQvfhJzn1bFSUMnwz81NmjjJd35B0X5NJrZUQUEZni5Z/JbErnTLHVKw5ZJ2LOvjI9cBkwXqVk/+xNtv8wEaRPt2G9YrEs3KmUVocC/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756897794; c=relaxed/simple;
	bh=3l+INupaixednUsRi9cpHLhiDwwAi4jcXF7ybuaNjnE=;
	h=To:Subject:From:Message-Id:Date; b=VNZQmBw5+TRKp5mdnvOYzC93f1J8Q3RCuq790tHs772q9spomqN+EavitU8iX4IEexIbe7PGWnkNuNERwNoB2JXeZV/ZvLsY7S8yK4x2wyF/nFd+hrAI+TuWHjPEaoSMvKu9luDP2OTVjMDliL4eD8kJ83vxwgP3E7VUZFoxj+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvVm7Z3l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvVm7Z3l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A583CC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756897793;
	bh=3l+INupaixednUsRi9cpHLhiDwwAi4jcXF7ybuaNjnE=;
	h=To:Subject:From:Date:From;
	b=VvVm7Z3lXQJFBUQNW8kX6opCCsLUTosyr6GgLQLUVSL2NwfSd7R7B3Rmp8hRqPzbE
	 DrsHNmYMIx7RdlYH9GQ/kdw4CBgYO2P8uzJG4KttR1nsxnShrwOuMXX8qwVKliOcAB
	 JEtvLQ7aV+O8Hxo38ABVCI9Leooba2aOC5uZjqyepHogD49bcHw3c/m4GAKyJNDP0V
	 NOh1oLlFcCIX2BIlbwQVjqMowHs2UIyxzYNo2OsbVTshA3nJRpCLefaSmUJqimj+1Q
	 32bqYnmCkIWDXC5MpYH3T8/CN/6prC+RKCSJ59KyV4PXr+zOyOD/reaeA+usrRFyZJ
	 4C/wdkUJ22vtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F421CA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175689779357.27339.17832410207961096507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da7989bd703c5c1bbaf0deee2904412c2f73bedd76a24d1ebbb45ef461ca4529
Date: Wed, 03 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756897793
