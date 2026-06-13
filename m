Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274B4367B73
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 09:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781343994; cv=none; b=QNpYfLCTU5p5Ss2vrEmM88IOZedyYqdQyTep2vmkgEt/fN48q2rZLB3An9amTdERaYa5IOFxY07h8iNnId1TviYnnvFyc8sPeU52mI+XrczDxeF6gmBqBm7mUzWI5cBXkPp45veBV5z0Thifs2hGyV9Li3KFqgW+/O3jWX0XdVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781343994; c=relaxed/simple;
	bh=jZSUc4hin3w+rKt5Dg9Ad+cyYl6W1vwb1jZKmvDJPEk=;
	h=To:Subject:From:Message-Id:Date; b=uBDa6QflCqKaHOY8ymbC0gehd4U+fKWyxAyWFEEMA3AIAtIb7xSIpf7XvUD1bej6ZAGgmXQGvtIgnAugK8wm6WCTi1g4yx+Wcu3nNHBvSfaDoXq0iDImwpTayOGmjl+tUsnMNZgWS+HPuAl8/m/qJQVauWwnR4yNafxMJZVKE2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0O4sqjN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0O4sqjN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6D7C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 09:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781343993;
	bh=jZSUc4hin3w+rKt5Dg9Ad+cyYl6W1vwb1jZKmvDJPEk=;
	h=To:Subject:From:Date:From;
	b=V0O4sqjN+Dv7NKdbkzcbF/Q6/rElH5ZrEYSavdcxr2xWhjxEGzzMlXk70WG+Tn9Gf
	 vu63wlJCSRimVAyw7gqVVOwGpTkZb4g7jYOHzVspzVq4TS7JWBTwQJOwt8ohig8Ocx
	 rPHHGtzFAbPMbljnlwUzQ52T83PyJSJCFjfexm+NyV26tgrk9DBgUWTuw+i84+BiyQ
	 JCEVX4hsX8UtkwlQ7pYAyDuNZ4B1wPxezyjdD+DSOGDGcb3r4BMx/LQ/YGnbO/lxgc
	 gIwJ6bZNHMMUTvriX4PjG6l20lkf3vchEpD2yARPXCwa89calvkLynAGldhjBqSAoF
	 mJhY2lhPUR3nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0827CD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 09:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178134399369.17043.16997223322500837999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8fcec200dcf7c9eb9493ce495dbdbdfe7eb09bf2ed4d3c8e0c6e96fb5085a7d
Date: Sat, 13 Jun 2026 09:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781343993
