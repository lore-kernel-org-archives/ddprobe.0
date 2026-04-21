Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235A0303A04
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776790054; cv=none; b=kVzcvwzh2055fRI4OncBvcXcGXrWZZhnVPi+ZdA7WfGQp/CrAikVsOhFGZTvttZSD9lKTOg0MzUDILjBjJY+ZlKQjP9W4d2Wjh9nlzrlg44TCEP2iJC3x9hwNOd0hvDb94hijL2x+QYyqpbUYjnlRHSr0GDBA0OLhCbwOghIj2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776790054; c=relaxed/simple;
	bh=hdy4Ag2zW04XjJmmTnsXU3tR/JGENbUmO7T3pT4VKVY=;
	h=To:Subject:From:Message-Id:Date; b=N58s0Lk1JJcNKKcvE/fP1pwCXm+5kmVvKxn+jOCQziDCHQd5oKIPS5hW9mK3/FAG2cAxIpdTMaT3TepgJci3HeoANjuqH7izr1kLcaA2NcUQ0VEBy0iX1L+fZOnXF3OIXgUcuheVksi+ZkkUVjT88lyGMs07oPqV5NjdMKDqxzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwHm2qci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwHm2qci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4F6C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776790053;
	bh=hdy4Ag2zW04XjJmmTnsXU3tR/JGENbUmO7T3pT4VKVY=;
	h=To:Subject:From:Date:From;
	b=JwHm2qciAu2ZTBi4Si0O/c4NxLA28Nb2/R3Iqm/BQ27wLlRkKjOWjtrmP+8XZSG5V
	 CeQP6za3JNqDSksvV6h5SmZ/rQB6D8dZXjdiT76MR0N7/ZgpIAsLWZNr3CFSwhXHZl
	 O+j7dq+eG5l3UaW9PgArJVfjl/6GCKoCGRUpXtbzQt3wtVz8pMzFxRLjBCbny7WUdJ
	 AfFTCftfZdN/RrlAeUT8a2qTnb0BPrlwUM5HrXAIw3xeqbXJbzmF6FQ6Hj2xFgULbA
	 Pvr28/cEzCEQL3VWyZ9tKuL0DkD4cIlzSy5dnTA01hBvd9lPrpmjSVnRyW1PRlY0dK
	 ByOOTsmbaZHQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB97CF8FA9B
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177679005369.30941.13079061454201723429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11bb8a4f7522d525410d0971fa67b1d1160fa570181d6790fbda986b519ed54d
Date: Tue, 21 Apr 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776790053
