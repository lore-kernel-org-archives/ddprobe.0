Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFF123ED56
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750457995; cv=none; b=XFEQWTLcCGKHIfZKxk/hbsITCRaIRdBL3oU5kMQAFqDRgw0Fcf1c20VErNagJ368KAy4RieTjTWQWpt3zg1Y1i3YrSQ7p+1SCrxYkrkeHcud339VuXvMU7GEhI/PGoljvwiRULWC+DFvEFkIWRxVxeD6PkpGsmNGXiCJ6MowZok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750457995; c=relaxed/simple;
	bh=QV7Xst9GPJbfwcRcB3OniAwsYHY4bt9hYxacDYSym04=;
	h=To:Subject:From:Message-Id:Date; b=J6DPn/ZVvaPkU9kZ5iK/Q5QMR+0fJnLDnmr1PkI5A5ZZYkNQn+OY18HEfZ0oPBuGKsFotvlvisnXP1zgY44O/gd5+zY6AHpoTQ8vIjoDnyVrUwJoft9/+0fS0buPM/tlVuxBY7dwFNXxLAHRfgGhg63SlWa6XC0wliwh7UWdLMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqZwhe3L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqZwhe3L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C81C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750457993;
	bh=QV7Xst9GPJbfwcRcB3OniAwsYHY4bt9hYxacDYSym04=;
	h=To:Subject:From:Date:From;
	b=AqZwhe3LCPVxM008bOgBjPIXcjuehgGBkVSa0z8VjYNpUYs7WORpMemkEr7JuRjVo
	 jXmY9aFdYLrskC8Qv8CTnYl3+DHYzGsU2ATTSm3w5bvkAw2NRnx04PLCe/m1gLygC+
	 daHPtCKZqUizQMo4cKcQWsidtOQ8HznZUVN8V5n2ktMPSLitthj/P1hHnx8Kru2Qjj
	 CLmyNRevAnRYDqGjG9BZqZazwN1lJ0tcIQ+2BQZHZuIGIqLcQfqOFoQSY9lKzLmBhW
	 Dj0uAy7ATxLxXtb8OMjH9pXZvJ8fuVHFPRwxWGbw0GkwTPwP3IgefyebfkTRJkR90L
	 fCTcvELf65AfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913FAC7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175045799358.6936.610636175797073368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f64044336263f657dec140206b980c640a2425f7500af1f9991f1fdf545bbc
Date: Fri, 20 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750457993
