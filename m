Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEA41990AB
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 04:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741235934; cv=none; b=upyaE82qcyQb4s1F+qYGPOqlDHBsmvSAuXXRPaVyVSFDBlN6tpYjKdMjjaXPoqxtx2v+6aV3+hdLJk+q9du7plrgzCa9lZnODB0VecmRscz4nxv1ujlxBzfW+XCB86msVa+nGWvC6BwoUCmgHHGfBd3BwnAWQ9ksNYIv/w8+d20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741235934; c=relaxed/simple;
	bh=//ivuXKFM4Na3/Bbw1QRcqklWU9C7Ms90BzkPlHRcdM=;
	h=To:Subject:From:Message-Id:Date; b=oaH2mmrTE6y9Ra5kYuvfpV47gbuP/9aPKnANgi1l40tmWF9fRBow4/AOVD3AChAxopmBEVNNUxY5YN3dUfiLWlcpA2TT+ou9S4+IysL4Rvr4iofgjZo1mWyhSyXX0HFPTSe7qP7vMzKHwbsMRK39pfn8GkHon4DQsVNvUCdIxUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULV9Nwkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULV9Nwkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56B3C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 04:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741235933;
	bh=//ivuXKFM4Na3/Bbw1QRcqklWU9C7Ms90BzkPlHRcdM=;
	h=To:Subject:From:Date:From;
	b=ULV9Nwkxrk7BaX1SNiGJ/9sHOJZlpI2W/zIHnJt9EFXFOt3dwgr+AfIbuCoGBxCO0
	 m/XWdGBpXfh6fzkTdKOn1zZ1VOnfL165N5qymKy33NQezBHghwdmyLgGCChYDT45h+
	 2aA+hbGlrRYD1E8PBbKGiR3TL6maKO0RzRB6vdDiHOpJUyyu9wvzRLm8uPgNmfxyQw
	 RNM0ndoHABCT2wBuHHnFYCBXdITGhKiMJiNQIOK8OB6ZMsYjzeSoBZelPvHIiVjqe+
	 XWlAddy+pDG1/Nf6rR+Z/R/yJmJDXEgex4SYYA+qSJVx3luXjsDb28K4rIh6kC/pNC
	 XcyZJ8KubVyDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C2DC282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 04:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174123593360.14146.5746236539847460143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef83a0d1252916026f320750a476638a6d672b365599cf0d77bc6a0231f2403
Date: Thu, 06 Mar 2025 04:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741235933
