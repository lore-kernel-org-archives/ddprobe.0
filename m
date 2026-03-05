Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1248B303A12
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772738094; cv=none; b=aIhugRr52UWYL2rl/Whnsj1NC5WS3TJa1I3DmkKvfkVPXdYDq/2vml+kdPsHiyMrIQimhYKnAlvrq1MFF58NwYclzUY9oH8mGTPadHnUecf8Cj7G4ek+FvUCNscp6ZVYDdqP+LN7qJZjQdo//WH3JYz8DwgjgAsFb60+pW30I9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772738094; c=relaxed/simple;
	bh=9DSSQE8VNr1OADR9uWogXyLU4Vwo8qGqnS8dYPFl2ok=;
	h=To:Subject:From:Message-Id:Date; b=hiGjucKgfMwQ0xHqcVkGCidiAC/NbhH7LzRItqF9kXtQYoei/FUTPp3raepS+TDX3p5q4Ubu9zwmvb2o3A6eEA1Wyhtsv49VcmpqA8qTU8XVYxsJWuTp0+KOfRUsEAstgfZVyreSlzL1qWwPfeKNlSH0EWcvstavhudQYLKwLus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Km92lLCl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Km92lLCl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68D2C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772738093;
	bh=9DSSQE8VNr1OADR9uWogXyLU4Vwo8qGqnS8dYPFl2ok=;
	h=To:Subject:From:Date:From;
	b=Km92lLClb6QngXDlLFVbufJjo1WB2XZUe9Yr+m0sdLefqTA681m1QB6mgkKDLPwFQ
	 Ofa0NppEtvHWyD1VJgHZ7vpmYQ0MiNPj4oHzCRMDf8JjmTvz5+j046IX+BGSHRUfhP
	 FpG3mHw0WnWg8aJYTLvc+hAM11t/qpwf+poVLqFbw9ZIof9GlByrsXNUVhZ+zRgkrV
	 /7lETMh4DWWBZVfgCDpIgkfbhc133C7EoFNPTBg/XX4raBsS3WLo9MjwUPaJYBYhnt
	 lGBwLhN4p27mJI5HeLGik9WaHWtFdmyGDXZgHeK4qPIWkCUXM29zyLDuSYdBtAbNhd
	 Ovq+qn/Xnhwfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917B7F47CB9
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177273809358.9510.9134139824303032113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0ad648e74eacef69e2dc2578175a78ea7c022724e33ebd1029879ff3dac71b6
Date: Thu, 05 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772738093
