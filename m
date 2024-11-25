Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B72517B506
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732533354; cv=none; b=K0Qdlfduk6q8Ay8t1FvenIjmEJnzw3q4fxaIB/OnBnCM3Fyvtg7E8cS7m+0fTHyaoySiwXMvS+CyKr4cOXzOw5DBXwSnsgsKlL1S1nuNxx3UTl7dsOcTSK+tegjOJAB3vRUDnzHx2Pew1ELqNhyDdvi8kjTJCgpSmXHjAa+4FwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732533354; c=relaxed/simple;
	bh=P4kg1tuEOXhSv6wr2Sc2hF+UqvdVD1q4Unp4qTAMBiY=;
	h=To:Subject:From:Message-Id:Date; b=lvdZQb/HLWC+zI/5DpHQKDlIy39O+xK9Oasti+VFnZhhWS1Q1UnZ7uv/TKcmITuRPHz1jLQC5KygRhAuSYJKjJ3591qvJViG/e2vkvXBGsa7av1InVA949msAexIjAtKYyUDRoTzlx5MwjfY8GvTaq3dPt8IGjZB0D8HkqiOcSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ooH0lVv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ooH0lVv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B812EC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732533353;
	bh=P4kg1tuEOXhSv6wr2Sc2hF+UqvdVD1q4Unp4qTAMBiY=;
	h=To:Subject:From:Date:From;
	b=ooH0lVv8R1TYV/q3dHxdtx5Ql8jdNFMBXmV8EOWF9x7uEoGLeZzN5gzkKMFv51USF
	 8BqnPKWWgXG5+XbmpO7hA5iROf0D834WnDZzbETbXeeb44bhkGHPkrVDj783sh88IZ
	 26R0zQ2pVZRC8GVeAhuc6tOuCqqGAWjxu9sqZ+OLa9MOwIc/+v70Uqh/I73nS6vmUY
	 aDzZcUwSVlvrr/xrNzDuSWtF3fc75pl7gGlQE3QyHnoAPMlJFVdNShhnnPuJ9dvTgU
	 0+dhQu8Pcpncv7E6VBmmrS9GFGFbv9+9NDfgzH0BIOm5Pg4xtjS58QaPvaJM8Nat70
	 Q4GaDguhJntjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFA6D58063
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173253335363.4732.572395634743970000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4764c5627af216c5afc152eb220d79a367270a5176b31f019a4949f2945c45ba
Date: Mon, 25 Nov 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732533353
