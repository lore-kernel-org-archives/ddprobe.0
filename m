Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92A8BDF42
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 13:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736169354; cv=none; b=BlBo1rG+tNeLj+yadsogvrY2fHwHiX1S9PLOi54c/7myG52F4KPA6hXvp++aZICbZurZ7H2zYlPqfroL6h5qD/YOCY7jLkswdIiUfgehD582Qgyx/4OFv38ZXGp40yDzceMPJOU0UlN1ORPqkDNLVy8xC8gb+nGwFDZakSRIXpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736169354; c=relaxed/simple;
	bh=OhCfH4LClQYUDF4PLYtDzAJGt+yNLSuYd+Pu2y2vARs=;
	h=To:Subject:From:Message-Id:Date; b=VZTeMX/cmlN8IvSovl56WJ7GT2/VJKpz0eDEz7s/HkZ6f21V+L40JLzOKhMRMQryqPW7QL3Sg6oI1wBRwYXDnWaENGHFIbVQFRbK74hOWxV1i1eAGrj9HZzQKskX5lbOE5V7DMciRlJzDR0C3PcSHEef5jMQl1vrpgJpQF2U9/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSmik9mD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSmik9mD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C3DC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736169353;
	bh=OhCfH4LClQYUDF4PLYtDzAJGt+yNLSuYd+Pu2y2vARs=;
	h=To:Subject:From:Date:From;
	b=rSmik9mDO+KN5gKrdPNr2xHOFn3g9vw7279JPqwAy5KdyMbRsRkoRI8DLq1shnErQ
	 QQnN7Ml5/gmJyFWTXEC7sNUy1SFyF06eCTM0JTg3ZxLFQ2uYZ44DYkSK+yiEdkqhXc
	 BXRsi1bj+CU4PwRRra9NS69gToqdd1LvoEcCjmYSNCoL2Votdcin5brAiNgkpMHpdM
	 R3Dq/PIG9x2SraW7/f3mG9U4FDe8gdfRMGnF7PkhwW1TaJKLsDCpNF+kAJO4237ory
	 +rS8j4aCAO8FdJ6Exmdmc97eEa62xKfiQFh0Ex/iDQCiFvYcfT/gW1PsfA0YYzKPlO
	 FMYDMxPyeW2ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91238E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173616935358.18784.12745149227670107278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff9c4932e727b192f244449c017fbb19f1912a806fe92415b5e47cdaf43a488a
Date: Mon, 06 Jan 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736169353
