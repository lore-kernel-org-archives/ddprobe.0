Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A65B1B4F1F
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752551994; cv=none; b=qIYWIO6tELVaEqiWf+3BYtN19ZoFSBKoP+yu/KNI9IXRMIWubu6fIEFD8Ip0Ml6WvbnyuisWqJg64Cz0wI3cUXVveZVhY1TDKiULZY6sEsBeWroO2IR428CksZ8PgeaUeC8M7lLaDu/Fo3OREsjpknuGf+/OJi1tDv1k370pFl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752551994; c=relaxed/simple;
	bh=QwKHKzAoMKjgcsL6COrP+bpHTBRLySp0PlLvcNF/jcw=;
	h=To:Subject:From:Message-Id:Date; b=FaL7Ind7QU/poYZIXO/QxUzWhR05vXEYdPxLx7k9jT9r2c4HmmxI5Rg5pmzwV6bwB4NMCZwzsI+qb78jkjHjQ3N4hLLHWzexp7lwpo+wUEejmGA/qYZZ45U36wCL+EMG2Hubmz9TplWTgk0o3g5/wtT0qiqouORjUAWH+c9Daa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7xzc0yo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7xzc0yo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA40C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752551993;
	bh=QwKHKzAoMKjgcsL6COrP+bpHTBRLySp0PlLvcNF/jcw=;
	h=To:Subject:From:Date:From;
	b=U7xzc0yo5G8+oTkNyMAqkJPb5D90H2r7MRcPv1+71LjwsAjK0y+9JjFISMnFHL6p2
	 G3Nz8pgC/FVZ2yjYyESGdIXAL/fne2euiHmD3br78yhRYW/ODmJdO0BvzdFdU2Tx1T
	 WHJ54FVjrvyd3mSuy5/f8cNVxs+TN06HReX9+nYJFsUOB7clesilsU0Nt8SWtUmwdx
	 a2kAI33c+HTPOxR1ZqsF44XnvDWE966Xc0qKp+TqILuEk9Wfrn8zh9H4RPvIJw45Nu
	 i1kMYC9bFGFLcpgAR6GaNPBMtyRxaa90mzHLBa1unuR5R+HKNdP/zu2UN/wncKcvNK
	 HJe1Gieb5QzmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F523C83F10
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175255199358.12017.8066612175016667042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d567506c234fede1755c970630b0a65715b21b0a16fcf593055fb593cae5aa
Date: Tue, 15 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752551993
