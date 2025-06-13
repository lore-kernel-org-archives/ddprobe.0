Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27962223335
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749851995; cv=none; b=h1puGpMFEOERbCaYKJYP57s7WtrXkgm79PeQp/bJkTjZx/I3dmfbDrQ/3mwnT6NRLJmPWuKpE4u28hQBALD8+1CiWZFe1s4rTBcxivj5WcpYbYmyHHGwL2Pb7+DhtuCfOJlWbpAEUpxYBJacis5WostvMFx8LHiw7Nx3RfVKl/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749851995; c=relaxed/simple;
	bh=eWRmcZlrIeUmEgeW3n/6dXL7/fGCJDkfzTZ0IIbzJCc=;
	h=To:Subject:From:Message-Id:Date; b=mnsQQaW5VpDDFPKhqRVCW2CWOiGoJfDLvv7G8EGoBgODdCaD7Yokp4KtoKaRSrY8Py1uBiLaUA4+aACn3VRBboUKPW/+dOKZJAjfCpLJtiw7/L9N0qF92nxbsSiw3j43z/ZG9P1kPAgKccnBOAwy4WxYk7iPQPAyQ2mRMowA1mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpMKRqaH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpMKRqaH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4690C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749851993;
	bh=eWRmcZlrIeUmEgeW3n/6dXL7/fGCJDkfzTZ0IIbzJCc=;
	h=To:Subject:From:Date:From;
	b=NpMKRqaHmuj0F8IufMrBAdI10E4bLhspmaDCWRPjlG4RVZFTYld2t7f0ouWsBD1rN
	 62yOOSK9yplmZbc5cVkQbDZ919vlQnNlCClkys1nxiA5EpZZJlSgwcwmWSx3k6DHLZ
	 hH11M3Sdz1tBOVkWhUn7AFJ8TWBkPj0U7AswIAaDDAVlIvxG3q084ZoFH2CqLA+MUE
	 pcJjCE7tshTJNwndSQsWDg62KQwpcs+QnK/KZoeiyczxsmgUc0yeLNR/QogsgnLsR6
	 H3UhcE/IfZLh4GvOuXwqDCmHSEO+Qs/Ua1Gd8076u1rmYVFqCiup7GeS/mSDwTrL41
	 q69HOZVJM8BYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91558C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174985199357.21192.18155558121264651375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f216f93c73b210d049d66f23199318de53528a16cd5ed7d156108684c3479275
Date: Fri, 13 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749851993
