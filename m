Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D97841C69
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747844394; cv=none; b=a8Vz7MtTkZgyzqlSHGmznQuoHZaCZW2hbAm7jjrAUt4lEQ54Ht5RcZg0fkBeRs1VxiX5w7w4wJVjnDEwks0SSVuqYcsksmSm9xczYnvMg5YUX5noz2t1T3pEid0VvYePwMQnUlbj/91hyZ4C7LC2lCZ9dspqTov14LPfY/mcz2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747844394; c=relaxed/simple;
	bh=36p2Vh0jN22ODWRT1LO7pPQVt51So21bXQ/OnkiQ07c=;
	h=To:Subject:From:Message-Id:Date; b=ha5QxG4L/JpKh19Z7vX8UWszmiRpVxG9F9+VZCKT/nYvTMI0Ja9yITZ5cCRFeiOu4OVEI51E00h3VFCxBLQmmruIZf2FmrH+OADf2JN4D9U2p07Nr/xuySFf5xDdYh0dSzEi6xX7t0yE5KHln48/mxIF84SH3u+eR5/UTp84MxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnrR2Ikb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnrR2Ikb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16B0C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747844393;
	bh=36p2Vh0jN22ODWRT1LO7pPQVt51So21bXQ/OnkiQ07c=;
	h=To:Subject:From:Date:From;
	b=XnrR2IkbkCJX0mBsJqY6jB1mdlpdkLLBGCp/9fzNaseV3xeAtWXeA/kkYS8ccm1I4
	 DvtSQVmOjG1/VEjo0ZUy6KMvR3Gm/hbHoLj/h7SxDyOhi2UaeavmVriTiZcifqpPUk
	 0NzdihbWQIVXXBuqdVdKRrB8tgvqhwAElFMMMg8CwF1TBaJx75hglwQ1gZDwp84CYN
	 e/mVknLnX1bs0lLmmUn2QPhfyb/JMEK1MaEh0HPfr7YMtwBi06fzM9/AzVD87l14Gp
	 0VHbb7jMlGJlY7DdGig33vCTio7YrpbBP77DRLkVWShTNR4ib1Sw5rrPyWl0BX2Tcb
	 DqGxtatzSzzZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C1FC2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174784439362.23387.15257085255404094054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e680d9cb102145ba0b67aedee31cf24178efc71accd6ae7bef7578f47bfd35
Date: Wed, 21 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747844393
