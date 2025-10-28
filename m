Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178E9221F20
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761683394; cv=none; b=MgL6Jdh1s+q/oYLVqr017XbfTblJ5bTLFA8wpaKrLwrdanXkBOa1Lm/gp1O9ZQG+va7Y+mDz1PZM9rra+lO10h1prMFFsiQGV4HZyUNtmXeCOxWbWX4TrSAeOu2rBX7e0RLnbovmRj0ZWxXfuajvnbzTmZlt4tlt8f0hyrz3Dts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761683394; c=relaxed/simple;
	bh=vAWIP4s1FWocNUUE+ZoClyoR4TFs+EdYWV49Tjr+H1I=;
	h=To:Subject:From:Message-Id:Date; b=YYX5HzFs4Tz/TuVkQdJHX/kKG9yLlvnOkSRSCbX0dqe7UV+wsYnxKs6mm6rdb3/yj1c5G0UoS0elje8eIXJLrEEenTTJzKLqwu2zPq2C2MAJJO2h5USmWDhaBCVnO4X1t1EkS07mNGEZaJaWq6nmxGU/pzXaBo6NqH8OS39CwQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bgk2uGwG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bgk2uGwG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A368AC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761683393;
	bh=vAWIP4s1FWocNUUE+ZoClyoR4TFs+EdYWV49Tjr+H1I=;
	h=To:Subject:From:Date:From;
	b=Bgk2uGwGppOLt2BsXEUMmNW7rSSuPTZ1rl46DVnlfrOpwJxK35uWiSMGCIGQemFqO
	 sWULZCYa3nBVIOzGdZ3HxVsx1VmFG7c9U7/Y7O9YBCbjRR4sWyOZ41c4sXY1W6CRcd
	 n4kk0+QweIOzb/u7KB2WEsThYutq+QjcjjzNvuMPC3DnuimzmkEEJw9ca6vsWV0ywe
	 NGQ/zBI2i7F0B2ahVisOPA2ARblTB41kcgj98StATp+WBWMELmexx6R3ebPB+ItXCd
	 V7ZTzQBSoYqNvqjoPX1pf7Nt2ofVjtbMQydI3/lfWyBlHcwPqbxUEMBz6cMLzMG/4s
	 vjzx5/EWUmfuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90784CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176168339358.17176.8842909897006535450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4e19eb3bc075c6f222c877a2a637d519f333a61fecc50867d93229b2adfbb50
Date: Tue, 28 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761683393
