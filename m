Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221CF2BD5A8
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754435394; cv=none; b=RvH+O9+F7wSwFDNB+8aq/aaSVwxYk+87ICBR3b0N4CONHhiZItG6+I5qlTtluV8EEQCgb02iiQLjyvafW+cv7Oz7pIKdPedK4xB4MHNWWLcZ+hY90wclapKZNflWhFJtABt/NX+dzuBnzyGCI6El5w9ScAU3Vo6RlFkkTFjULto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754435394; c=relaxed/simple;
	bh=m4Qf3NGvyBt802DBL/grNmXBs3ZjWUrF1vF27bYPRbk=;
	h=To:Subject:From:Message-Id:Date; b=GoHTPMFEG0O+r2IuiKgfMZSzPp1PcxlnxXlXHMOk+CW341bV4rAZroyMJgAyA5UOjbv5Roaux6oRiV7KyF36mVS9H7iPsJ3aua2fZZgV9o2wWE8RaVccEh7s82OYmWpwJo9x6TNNENqT27USkmQlhvBxlkNvlziyELINpsjYCAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AucLUXbB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AucLUXbB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A418FC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754435393;
	bh=m4Qf3NGvyBt802DBL/grNmXBs3ZjWUrF1vF27bYPRbk=;
	h=To:Subject:From:Date:From;
	b=AucLUXbBnQXg6a7fsKef35I2sBu4uE0/x3EB+teq91zCc1z1bi/KvKb+Sv4eem2aE
	 vKcyuteikSSzq9c9xn3D1JpF4VEtF3Hs3K1FpImgxQ+6oHFGT79ysnESwNrzP/gNa2
	 uYLi2y6k3Fnu2eweqUejsAr8JlRcZnaZSX+memeXqkcUqGmLJGnwSGEQ+gL/J7JAWz
	 2BCnoh5N5Xt2kstMBkvbMKoGGF/1rVgbjzOqkYfKB3E+Cs1l6rQX7v6dim1LKVbE6N
	 QSLX/zqggF0NVzcdqYTBQ99wQsNGBJcrwio2LKg8Mq+vQlJfcLpCLUYgo7nI7ZdtIF
	 6FbLM/HW9lrXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95392C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175443539358.14533.161648641818631386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b618eb12829b92cd2220bac98116dcdbf3292b804ed2a5ae287d82b9657dc226
Date: Tue, 05 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754435393
