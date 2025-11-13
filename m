Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E06F934EEE8
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763039394; cv=none; b=TcHJ2LQNJavgK6UKbKhT5zw+5xHDyewf2uoV6wqrGbhFWoI0Wbdyfua8cnRHCahl/vmByJpfV2an61ibr+I6BWPmPe88d7RO35yGaP6Q9468FA+Nh/+vty84g1oApUlZ8K7vNaO4QRa9SaJmOqJ4eu/K1Mb8NuvZK3GAVxuYLvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763039394; c=relaxed/simple;
	bh=H8A8Kw+cuJWV4RVMkQhaP3Cg7tjSXzx8qHDiM18OhHQ=;
	h=To:Subject:From:Message-Id:Date; b=J6lvSDIt/JqtiaG/N3iaEaOAg8E1ByaQAqzkNxjvr8YLVlBHH5ww66x+dycgYmjUS/PmD5vcBOcDksh9oBKFyWk/UkS4CWJ7m2Oqfg1vrbldNeTNIwMSLyX5LIsSrcIDLSZHLQa1qJEomBMlbmnC5VdvZFTuBiLTDq3rKSonKYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhAk0nPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhAk0nPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52D8C2BC9E
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763039393;
	bh=H8A8Kw+cuJWV4RVMkQhaP3Cg7tjSXzx8qHDiM18OhHQ=;
	h=To:Subject:From:Date:From;
	b=FhAk0nPjPHDQLHgq15jlmu03x8RSLaDNnMpdkNdEqiDM/NPewubk1tJEToJChia1J
	 ZpcND3hRoPo/O3JQgncuFn9tRAA93MvpzHbGilY8mR71gji/C5CDuNR3Z1qkRf7kfq
	 qfacSFPUv4jHzyaSmhoy2CnOktNk5ncwmxvnx649mvMfDStH+Iul03gGPgtUN3bNNI
	 T6sDj8LjExDUZoqOhBBFuekGqKdgRxUv2+7hZmmcY28Rqzfh08rRuT9tNVKBPFS84U
	 QjUU4/mL0WEB8Sag6jIhTFRi+Z3tmCVWAGOrBtODcKpvDVOY9Ti3iRQ12vyavpd4F7
	 GREI50oChrIUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A26CD6E52
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176303939358.26944.5145177168416826820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d284835588c64f3db3604bf521d5a903002b138990393976340fb32f74abe51
Date: Thu, 13 Nov 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763039393
