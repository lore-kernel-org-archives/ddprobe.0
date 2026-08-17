Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FB140B0E6
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786966834; cv=none; b=q2LaU/sU7mE80ibqcuebLHBZik8vvk56Z8ZegqYV0XshJBdcHJKzusi3Nqi8r59QxKgah/lrwV/duGGRsO/xmrd/0hXMwHwVBn6ysdxoGziX5FAFgdedHXh/KBNfunR/UwAkrAWMoKlTY9qBWkBflVhba9ooZ2p/8qSYqBWQNOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786966834; c=relaxed/simple;
	bh=mJZFPE+LuNow+LImwWWUrhwk9XoriDGNDGQsxTiO0Wk=;
	h=To:Subject:From:Message-Id:Date; b=LYc9lEWirbY4s9+khbZoZXK9LiV3u9mmmUIiBbcHArhYaxqnVu6CYcH8TcfABlFCs18SQIJiC8hguob+HQzr7io7U6GWZ2u8nIDroqRwJcyHlvWBW8WdOom9e7nsNjef7/m+mwwY7F6He5ejWvESKuYutTULslXXAcEDr/L8Kzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKujBg8H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKujBg8H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D513CC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786966833;
	bh=mJZFPE+LuNow+LImwWWUrhwk9XoriDGNDGQsxTiO0Wk=;
	h=To:Subject:From:Date:From;
	b=XKujBg8HoG2PeEfHB48oUU0LBtm7lkiHENphNYvp74l8/rzbMAAcKE42ZJte5nhYW
	 yZRJt+9ZKDJ8C9nmjEGYXNBxZouSSta4a1DAp0sd36A3hoKijO5q5elR1IIYvNuJgf
	 pVo+AkObm7+xwJqe4jAgcASfFIRwH139FOrVSE5gLyP48aIOTUnWb3G7JrW+SeCSut
	 Kr77Db2y57T5pZlRtxQxspmAUGQRrshsjNxD3qH9D8PX89k1puDO9xjBqaUEI2bSEq
	 ZkOKLRDHq3N7vOu1gU0Kb7ho2O9b3ZUn6oaQck6n64sYknJZvjxZoUzlR4KXiNdlSF
	 Zy4vYlhMpHqdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCF2C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178696683371.26803.16944292110073560949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e285e488646d04041424b765b50bc7f14cb2a768dc5b56a1399e927ec45aeec9
Date: Mon, 17 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786966833
