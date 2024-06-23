Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 986F612FF7B
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 20:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719172943; cv=none; b=QWaaqA72W/TPcKTDN+7/+3CP20dnAhcCO4/hd7dn6rpWH1H42q8vp1aSjoMS7KUuk5Auyfe/RhpZoOueOdrlLS0R6EUHhFWPRADCIi1AFwYoYylXCLDtCdd5S3yfbX8qIB5M3AXD/8uAIDmHs+ZQ0KPoiwFuIELKhaw+9ih9Qno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719172943; c=relaxed/simple;
	bh=3l2J7T3mXhFC1ctfqE4CFsXX1uX5KwOxeTWPzF8kuMk=;
	h=To:Subject:From:Message-Id:Date; b=uCKqwxjABC954qbr2YLPFvwJ65S5SHihWg5IPoPNEUPZJDRYejZKxz4YWOSiXzK9cho9Nhnu6TeAdCM+MxGsI1tAJ87VnNS0/rAHADGc3JvdytqXaHLPNZyzrxxJtxlV4gi+lGqnBz/Tl1inOaEh94HHeU0afCLApOnn8a6O6mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjvbYrHD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjvbYrHD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE49AC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 20:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719172943;
	bh=3l2J7T3mXhFC1ctfqE4CFsXX1uX5KwOxeTWPzF8kuMk=;
	h=To:Subject:From:Date:From;
	b=LjvbYrHD9ACewDmjbNNuJSVtOmgGv3TKRbW8q9pjX0YVyiD8RRxvy/AC2UMHDyRzJ
	 BQcBSUvetzmZTL8N23bKMFx5tveZ7BI42EbuhnHQ4dcbPfyPrHd2brwqcHMMiyB/1y
	 IDhvr0MM95C4oKzBwLe/6dWU9r4P48ayQGPfv9SnfyC6rTmZcrHTAUjHTQPxev5w6N
	 QjY0vDRpyM6yzVt+XV770w2gq29VYFloFH6u0zk8hpVJbcpXJrVlmKVWqFVC9gfi/A
	 0kknXjhhVi/cq1TdQOzKkoMDRozr9U2wg34SOoErY4fpO1SoAIMgAgB30xBUItUAyi
	 1YOecJTE0L6qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D25F7C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 20:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171917294283.5938.16450771910641945551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6338d0d4c3bc8a84e1ca30faef6785abbb7229cdefd3b730b87cfed0738ee3b1
Date: Sun, 23 Jun 2024 20:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719172942
