Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653A3173323
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 15:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714491743; cv=none; b=YeK6Trtqhzb2Nf6ERZpC1Sz4MA8GLIzHcGiXcrKK0aGJapjTnoHrlDFyM7dL51MZXl1HOpJA+iaVQ7BChEf+oC7ebFdWRvaXUHDRG9GMrGfT7eb84fEb3j7ZVRIpmqhtgNz5YULOZk7APvdDN/sqFsNgvDBn1Q2xcuIjp4DFjYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714491743; c=relaxed/simple;
	bh=AsNFdTA+0VSGkKbcAslH5WiXFmwTUnTUu47nPXY8+mk=;
	h=To:Subject:From:Message-Id:Date; b=b0nui6m7cF8iX4AmJSl9bK2jOCr+061Hm6+BRhXAxrdXk8Pz2V+hn7bwke2q8rchr4P7uuW0Tr6VS3xBNnOg/sxJyRJLrpoZnk4hMfNJX8W3Ys+eM1gAxo1RsroG3kaYAWrGOFnmAWRCEAlxAZ1CMEgQ2dskQNgL22Yyk72uWdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKzEpxcn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKzEpxcn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5DABC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 15:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714491742;
	bh=AsNFdTA+0VSGkKbcAslH5WiXFmwTUnTUu47nPXY8+mk=;
	h=To:Subject:From:Date:From;
	b=CKzEpxcniMT+R473j1232gSZZF9FGTJPJzjrnTLdUz38+Ig/EWWVEmnT4I2uGUcFA
	 Q1wtkK6nxXi3qyFIJAxVscXsCs/IQbY1KqSeGHbEyWp/0zR3jm/LMxks3bvuAk3Up2
	 1i5zRVkDnLA+JF7bvPsuD+FASlJ290ZbNoPVkt2MB7ELdfbAr2PUeDqn6lM3YYaGUH
	 5bqMAiLtpwuz6xbo5044UUU4PqrzY8blqSIIQmx6Mkno4eDHwVMRqvdI5GaKp/8gij
	 HpNH/TzwL9pNd1lAO82DrmFUuUH9mWzftbDTTnSLcpAi3UkGTIC3mgjBCVxSohBG+D
	 ZJMol2HdC6ixQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF340C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 15:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171449174283.23577.6630420103723582902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f17b7411c47cf000cfbc139bf4e79be654e31caee054a3ecd74ff72624673428
Date: Tue, 30 Apr 2024 15:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714491742
