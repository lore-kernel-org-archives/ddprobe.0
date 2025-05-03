Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E6A17741
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746237594; cv=none; b=Fo4v45ywz1tOOBLhnM/k6hAqWVLzwz3QGiU/7bu9a87zKahSqz129pao9Gg69FZ4jlA6/yCHGtMxvphaKcaplgUiqu++0pBaKY8xaluB3rhSVFVKQ0r6wKaOrzCwY4XoCRcvYO1OjLdGiGQ1zBX2aOpGXI27Ij/ugY9339sh+q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746237594; c=relaxed/simple;
	bh=Ej1r+aLI5MAWbSTlXQUrnykInF5XE6Msn29EeOqL4wg=;
	h=To:Subject:From:Message-Id:Date; b=TpxSuQCqKODQf8AI4xc9wUzQk7VFeKHS3QhanlTUTj5G9NcJoK/SdPCY4tFi8QK/1TvEbsrGKcfsOVZIRVcGht3y3omh/QeKoKHDaL83FiQnCpiolAW7bL2DEckprugUs75aUWStfzCVvzrTAzyhPDJYv4rvDOGGmD8Jbe3bLO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqSw3aqD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqSw3aqD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D27AC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746237593;
	bh=Ej1r+aLI5MAWbSTlXQUrnykInF5XE6Msn29EeOqL4wg=;
	h=To:Subject:From:Date:From;
	b=JqSw3aqDc3Ka1PorNvcuJKGQlbCzpCBUT4dtB+5tAAgCsBd8aMPlE06cX/r6PPX7I
	 Ao2r/MNY8Bxw4cpFvWR27qvTOSVefB+imRfSGlmuSk1xfg3sq6TRRM0ygaVdvDZi+o
	 WoFo7OLyMvNjEBJT7rBjG9ID88/naovYgLuns+W7cwTXtXN07rLu2Bi6XmdnzZ2JmS
	 7YKsa3KyNX6PHivqZNsnfPHjr+YXDZY5JoVXak3/T3rMyUDnOks9laCairbZMyJqho
	 bfubUPP3pEmszZS7fUvT3SqUNN/lmm9UMy9uct/E7hbuF80Ze+y4lhvrcxUDXKHw0V
	 3PmM8L4wOZuHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E709C3ABAC
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174623759357.4954.14490232026052357209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca9a927809d184d74fa75f21b735dae45d96284218fc467cb014dc521fc8921
Date: Sat, 03 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746237593
