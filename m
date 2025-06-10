Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218E321018F
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749532794; cv=none; b=k3jmwwW6MJjoed1+PaOiMUnpAr2k/4oXBAObhSvfMZIXexU5M0xXEmX6yMWeKQlyCjhFyv50RMnkPhctBcRLingawu8m9gvP4q7CaZGEOQYd+CGuiVYccbU7Z61dkLt8LtW8Cbr167CQSDIRTXSDfUp6pVrxRUNAzALIiVrGF+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749532794; c=relaxed/simple;
	bh=MrdXL+T7PB7QAdj27qWhTqrHNdqoQV6jkRuEHycYJxE=;
	h=To:Subject:From:Message-Id:Date; b=lmLJzRIHc4v2N7o96wa7lUUOq1OGrDpMKic3Nhl1BjDUULHCdB5ijT9cuNKGGPDI0jbkuPszzesHE7oKLuezSVlJ8CUHlszImYhUYNeEDppgSffz/B2l8fv4BrM+H7Txv7dLCeaYt137Rku79638GObB7RQyd/DvIqz3p0AUPoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3LDetdl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3LDetdl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B0DC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749532793;
	bh=MrdXL+T7PB7QAdj27qWhTqrHNdqoQV6jkRuEHycYJxE=;
	h=To:Subject:From:Date:From;
	b=C3LDetdl1V9ipXLcCITRHBnJNnjG0bWsy1qiyzhvTCobUkTg8xF7oarLPq/8I6PIE
	 ju86YmWAKMwlC+DzhMKeaZtGaq7U+YJoWgdPZOnxr2tEqBgS7TQ1ZYQjIiADBBPnLL
	 DeRMUG8RSHvyYliznzlgaQ5PZq7JwepHhDJQPap3SWdMeuN4ROocSPyNsI2F7Nilba
	 zJyFwdRWWRmq09Ii/JiNenquXC4htpwTa+y5XY9ZVeQZROCKAgo/Qd2qhN7Wxay7fv
	 XxHF1KUnZ/Fn/g2gXPJl/Rr3/wCvc/pZOsbgJvMCqr6fAzhH8rzWPtFUOXLAN/PQRu
	 lYTZS2I8darpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F70EC5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174953279357.15392.9424187751568349711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 191d41479406125149f84dc72326d21e1885ee732a5e631d56c20c3f9003041a
Date: Tue, 10 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749532793
