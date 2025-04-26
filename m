Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365EF219A8B
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745652594; cv=none; b=AaVGl4YG+TuXZf+riVDLx4PuHQw7udUvHNVeDoIlKLtEwTmlXcqMB6mNxT4EM71fvl1XuGuLc9A8Ck74ffPCQeXfKB41Zs+tFiRx1HVq0JfP6Gv0ypm59DziZ0rEA22O3LO1SIbifuvqVSC7X0Fs+mYH7q7ZuRxJ0m4fBya/e98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745652594; c=relaxed/simple;
	bh=nGImDbabP4eHo0sjt7/91uoerYuTYQDCKwj40nWCngc=;
	h=To:Subject:From:Message-Id:Date; b=BsNC4euzqRREVDS9AETVBnx9H5hdintF5B/wMNfiTRDIIvit2g+R6QEUCD6/LFx0gnhjX80ciSpNLtCyWWTzG2/k0L3+Kb+oDiUBcg215rXWyN1zz7Upop2uKwZ/DtqPrCtYjfy+dQYpgCJTh3ETlipQOVZay8UfYcxbsBguNHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJiNRvTk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJiNRvTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2552C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745652593;
	bh=nGImDbabP4eHo0sjt7/91uoerYuTYQDCKwj40nWCngc=;
	h=To:Subject:From:Date:From;
	b=PJiNRvTk2ny2ZMCmpt4KkcKxt03jOrR1J1cj8guPT0pjhfzimvlIMEh8oQ980y2dI
	 lDy63H6jVrlDxLJ+ty8TRazW2blOIPdGUFoh6xZCdplD+fAKCftueHY5x61cdmKJGo
	 Fg/MjHhgKWzVjutP+KMl/zxG9mb9/xyNKE0zHqlTKA4qbv9jarcppWwkkSuAcNlMY8
	 8qxrnfZkbIRNstIwoAlAdZ/ZtKGzKrarfJsOTu243sO+ImVfkNI3kK2xOv16Mx4e+j
	 1Moc170TQ5/w7CPMdmHgYYVjRmG7Uc91KbxXHDvqSNiXXKvFPcVDaSxF2etfvJYPqJ
	 bmBXgaZnXwXNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EEDC369D7
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174565259357.30596.18397142974348080582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7165649d20b325f927c66141251034b095510c205924d84d58664b0e586efb
Date: Sat, 26 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745652593
