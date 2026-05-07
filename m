Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393B226159E
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778131054; cv=none; b=jBc8WFjlln9qWPBZv3L156Z3+Fx/Gt8CcmW/smm4XZcX+NAjzsfWhG44uq/IDyqA7EGg5R9PcJ8gC/vzb493yxQ61vOb+wXZ+I/NsECAB2uo3ACm2jlUP9kM3Jo3SkaOA3MmuKWAUbOuR9HQWzw8ljB+uadVaSfUePOl7z/PBnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778131054; c=relaxed/simple;
	bh=zJzB4t/Hrg//lhM3jJR14n6aFeTA37FoMfdFqayWLSM=;
	h=To:Subject:From:Message-Id:Date; b=gtlZ6MqL73LSqeOhHSXL+ZhGYfsl4SJuPnJw0T1i45Zmqcy3qGwGtM3kmCSmgP+D5P0Ei/1c5CQu6HN4/WJZ89YAa5+KJFBC8UZXvx1bB1ecAYs0VtmLpeF5LHW0C7Eqjz+mDjue4d4Ss6gLoGFBfP/4YMIYbrTOGzapnkLDaco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqJWfwUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqJWfwUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0983C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778131053;
	bh=zJzB4t/Hrg//lhM3jJR14n6aFeTA37FoMfdFqayWLSM=;
	h=To:Subject:From:Date:From;
	b=HqJWfwUasD72HVz27Pg2xgdqxRX8EAHPul25i3T6FghIQtqDbr5fEzGXc9mQ1qZUj
	 mzc7E4lUlnhCydWqvBl6W/2yYdzLD+A063p0ji6FTZX42CEi4mLOyjO2gTkVUghvBh
	 gBdHTeUWwAf67OnZns4cs/4r0mKlO1lege9PPj4CuKwC3j5Awrn7l8sRg8P74G469Q
	 LIEdZL3Jy/0q4g+ocvv3+8PvCok1z2+1hMkJnDZ2kMCfXzGy6uSgVfV/5nZk8qdvtf
	 x0rQKTjlYygmpDkXDOAntUrm7pKV6ft4ksdAECtd1kSBOv+Zqy2vC+lO79yNPNvdR3
	 afMb3wYmq2qkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD34CD343B
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177813105368.14165.11845812160253674455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3196ea1c2cb2fd6417b46f26ac2bcbd35e9b4b109033b5007b499547f9c66c97
Date: Thu, 07 May 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778131053
