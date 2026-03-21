Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041EC303A0A
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774112094; cv=none; b=dQyKfer8lzu5Vv+5pRNv9MHbHtYnpg5hLloFxXBeunTiHWCRQw1o3zoLzM7LiLZnS3QVUM0671G1jOQG4UAGmbKJ83frJYi7PN0Sf+Lj6Eftc7WzeGNmEmTHl72wYZqiRxLWNY2aG5Tc/JY9WGGbFhM+9s3Wb73DofDQzHYA7kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774112094; c=relaxed/simple;
	bh=pZdAlvWvHbySRReq32Er6NKafUZcGQhFTY2Pm9p88FA=;
	h=To:Subject:From:Message-Id:Date; b=uHPyDY9/PPz0GUVn9fmrg/yw4FUOeHotmtPYGawy3MKnCYvaOagh/iuaNriFusdwH/GAufvHHBDnmrl1D5XY2VnZqNPdvxVqUfAWxYv3ABe5JllNajVZNNP+wzF9Xg6L8S2/JiDbVj/3UiQpBTvtAoQjp3KbNr0shH7yf+oiurM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMbHPgHK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMbHPgHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8A5C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774112093;
	bh=pZdAlvWvHbySRReq32Er6NKafUZcGQhFTY2Pm9p88FA=;
	h=To:Subject:From:Date:From;
	b=cMbHPgHKSRypyyzOzrbbVFWzKfKZ1dJd3Er8LO7KjlJ29mILiHOhCQ0hLEhbjNh4Z
	 9mHcJT/wce9JpgyPh3gYz+Z/iWB3ldcsh8TjUfvGqnl0Yu16GYf3mwx2JNFpM76Z+9
	 xpXOmhXofHcduFwwiTifTUYwx7D1uaAx8mJVc+mU4tCywMfTmwCC11xxEhmfAwS4x3
	 DeJIzD6G4pWqr9cYumKfRRbE879Gq1/lx881hU/SutBlyE11uh0M6+9/D/cW/fLBHv
	 JgZZKgJASqH1KF0TATH1RWFEihyrFT68OlKuvEGlhaN0gwmvAQ5G5vjzNdm5c9B21b
	 ouZXBrYoKEpuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7941094489
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177411209357.14277.18200011157818628244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b39e99cdc9af2635edc90b24495f89920097f48a3b2441165dfa5112d875705
Date: Sat, 21 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774112093
