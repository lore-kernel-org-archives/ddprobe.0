Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265973168EF
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 10:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781519794; cv=none; b=klkOJNDd1bOjBj5fzFRN3BeHDmXg869abzV5YU2u8OuNj2HJNJ2W81HTuRGhT+YS8/E9nW3+ncXL+DJKVYiKv8ASRw2yx3LdulBxvO4V6OfBuvAS2hGX8tFGKOzcqEhWIlxDulyGzSbh3SYNXTbsldOHwCqj8t43DN1Q/MDwBtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781519794; c=relaxed/simple;
	bh=QCZPgPb6PBeNmS0aJzWhhQvCqpQK6mx7ezJj8iKxXM0=;
	h=To:Subject:From:Message-Id:Date; b=O3yBp72Gz6WZgWYyNlr6CayH8xgUH84hyyq3sP/23GhoD3Mb+58s40Fr24wYxyNrVRViCW+4ti8OBELm9+lFUIIJePMzTpkE+tLKilq4rKR9fzdcquRToRYoJoW5jYwZQ6hhYqw+76nbfZWn0ql6P5lUTfa1oDz2Z5T5kF0WA24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmeYxYjx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmeYxYjx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44B9C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 10:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781519793;
	bh=QCZPgPb6PBeNmS0aJzWhhQvCqpQK6mx7ezJj8iKxXM0=;
	h=To:Subject:From:Date:From;
	b=VmeYxYjxNdC4SBVWE4MUptEjAukk6mNcA51JZ78+5qeT8XxuPR6PhhuYKVSXBR/g3
	 IIAXN+VAAQQpKxsqC8mLqkP4JUk/6voj2E+fuEOI7bxNCEklaBAvMCJK3DNN2HL/P3
	 IUPrqK0QJTea6SKQwn7VC8odeFZ4L3/pOH8V0io0FQw5NAR4v4sE872zqI+UFd4vRZ
	 h7ZrXJFhX0TOvuFGjpNSxTECWA5NHewn3VfjdZfweXdvfyQ+bIKL2KWPOLiJWZ9zW5
	 AUPPoH5D3ARmMj8daDUtzVY4amGSql0/7Xr0zYo/+kGHhdLrQGC17n84riRmlrwkBi
	 R0oWosglUQgFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B822CCD98DA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 10:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178151979374.5652.16735036186315299719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a46430f5647fe070a9535d0b32e99da4d25a8dc0f63dab8f644fef3c69df428e
Date: Mon, 15 Jun 2026 10:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781519793
