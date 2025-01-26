Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446CC35949
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737911756; cv=none; b=YSDAL4DEBK+O5C9Z1kOOj9KO/8uLV1lnVlCcBbUrmodqwPk8EtKFu8WP4N10E56aUOlqPgG7wUMekVc/rKQPAhl8gqKLX7H2b3aOE8kxALC0GhQre0guL6zzx3VZ8HyBMpER0UUiwurswirtpoGpx1W9RPh7dSgET2Zjxhuhs8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737911756; c=relaxed/simple;
	bh=9fHnTaRHoLxLIr/nZOH6nBBvalcuO68O5sacjMB3CfQ=;
	h=To:Subject:From:Message-Id:Date; b=pGDNdlRZV6NaTr5kq3wlIIIxbZAMdAhMda6/bpbPJ0FN5540JImaBB20CQ/p2Y1P1pkVRYgrunqZBz6DeBYZ+xg4Goys2iYYbR8V1NXFf/Iy/fFwePuTW7cBKBf8/jSyp+RTPotE1Ri2oCPkAnpvWWjUmqJb4Iswo980ehnv5Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOOJaKSl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOOJaKSl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBFFC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737911753;
	bh=9fHnTaRHoLxLIr/nZOH6nBBvalcuO68O5sacjMB3CfQ=;
	h=To:Subject:From:Date:From;
	b=GOOJaKSlyHKBHx6JMCqjrDGWs8wNuXEjSvdRAvLlHbV0JjtFGSch6lnxA9/qayizA
	 U/dfTLp1Y1Og1Fyv+HBQkJ1wriLLARuyub0UzmHB4PZY5YokGtSaz1JqkRoXbfh7DG
	 HmVz1XAh7DqrAit0ufxtd3/7itiA3WXxxc9MTYXWzsARonpNsMCUhnWqgJIFIycqFW
	 SyW3/CViNHiucb0DmrktrVMPMePYH2UKXcpBUzAQ9ao+4U8C+RrIqQf+tUZMDXQxkv
	 iDe8rUpt0ALh61jmtt0UZtIJG44KsWY9K6XBXQ2qpiQO21juLm1wcPxzmTG5NIe6cS
	 U4t4fKLZbWX0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9A7C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173791175361.27336.1689655362547743031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11ae463d8368d91a99c811825e9b17e916615b65765fc70c6c2e40a3514b362c
Date: Sun, 26 Jan 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737911753
