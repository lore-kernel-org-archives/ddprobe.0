Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B2127FD49
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759136994; cv=none; b=DiCYdkgSKlJTGqxq7pp/I8sUIeDPW7xlC9TeJMFtTpR+BNMJSjh5zlczi0cOpS90/8BHdAkHS2n5DmluY3lheEYAoWP3VqpWlGF8oMlPWXOLS8PnkY4UmTQPDXRuT4FjV+/PfXKYHYEN83k9ThvTGpwDlg+6/LVJKPWbREFHZpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759136994; c=relaxed/simple;
	bh=BtMb681C1hjTpd9O9pKgAcyFMXgdLjQYkCmGKhPNtXs=;
	h=To:Subject:From:Message-Id:Date; b=tXbjM00t/5fhbThQuVcVyQnd6hQvXB6/44j7roCBx4laGcJ+wi2Ak/UwDgDklwwuVZWkf+me+cxA/6V7EzUNJPvWbM4ftkUyfQf0FliGW9/9pla3lrWfQan+JFNnypCeV2wp3Q2bI8X4eYx+xhhhpNzO0h9ZT4WSBrytnENIhIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXotZ2zb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXotZ2zb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F70C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759136993;
	bh=BtMb681C1hjTpd9O9pKgAcyFMXgdLjQYkCmGKhPNtXs=;
	h=To:Subject:From:Date:From;
	b=EXotZ2zb/OPx+8CkZAwhVdNx0fT2ox2KdBZC/XNW4OgMS+DxYZi4vYy/TaOqeuJPP
	 cUFdrzd24QBSGcbjMJNYI/a2z1Ce5LiQwD+IUxUd54hfnnxZ77M+BbL7sG3DGENgrU
	 W7IDBdCM/eqrRbiXoA054EbbrqHRomAPpYz1FA3WR3kefgS2bsMgyIn8yA3HiNU9zG
	 tm6XBZFk5Pz0q6PgmhpEUrZWYm0ujgr6IoX1tW9WyU8HPkIanJ6XdtdA0NwEsNmiVz
	 FIwPrNUXZToq1Sf7MB8/BgWqnLtB4SzzzQhijZPiPXUCKVQPhucuHi1gkV5dLAWWj6
	 Aixp+mLNQ9RXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9442FCAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175913699359.7421.7227010975840311450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f16bc45b34fcefe488036aa113dbb5e08c5033b398aee10e7d4ca80612bba938
Date: Mon, 29 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759136993
