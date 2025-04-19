Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3718D35897
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745101794; cv=none; b=JqpoaPjLg03XQR9fqMyYoxVdMPGrLJXmJi6i6gacXdxyJlmmC5FvLxgOcC8qsbB1VRK88ou6vzpRgGD8iHJvMbIPW2NP9e910R0XoP1QpmLyNaYMk+5HkjRN36n5Lh700wym6RbOVbMWHD4ACp21JSirE++B54ZMFwMrblN8thc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745101794; c=relaxed/simple;
	bh=7urR4kgJ5VmWs1gME0U9bcrUJTBGVyGWrOpNYynohow=;
	h=To:Subject:From:Message-Id:Date; b=KGbdIuwU41jME4N2rarJkoU3Vzieqhd2T+j57fdeI9MK07PPNORAsYcnLDEKlDcsIuuMxs9wzkuXW0WzevHakOoQ+TdaDRH3GH+9AF+lUfC9ezGj220jTaLvFABrjjPD6m7yHtZlRqILRU+hDnaAfRg9hgH/4y5Ydl0YIQPwPew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qIr2hnIC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qIr2hnIC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBCEC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745101793;
	bh=7urR4kgJ5VmWs1gME0U9bcrUJTBGVyGWrOpNYynohow=;
	h=To:Subject:From:Date:From;
	b=qIr2hnIC9qNr7OLgItna8oF145lDjqCiLakrpyJMuIMJoD4ruESO3jjsTR/mDzsJd
	 RdIw2THpWQuaUBokbCffX/0GRIahUrOzOcF6CY/XvUFqmWmO8mTKS23WQE+L6HpBo3
	 UC//L5tqamMDSURCwtca9Kl8RhDaB+To2xvUfHcJOYeIez9BXzmWNh83GFP1aff0fj
	 /12TLLn92GwgjD86K5OORcEzXHaFNPXWvlUH+bwJNbXk9JGiyqYwgA2FW7s5acIEAw
	 fpMdJvGbVQ5mp2c2JchgDZgGFS5mwyR3VbkvVhBugxZ1b7+NWThC2B8DFap0SXUDrL
	 CfXbwG9VsuNdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A50C369C9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174510179359.28730.7098102095451452064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f368c478f61a0c7d8874e91c8f48b330ee13599b807ea5c35a4c0f9744168ae
Date: Sat, 19 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745101793
