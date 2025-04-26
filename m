Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7856FC5
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745686794; cv=none; b=nWTAusDu06XXLNpAuGS7wIOTWswyG0NjESPBWBSze1QrsvfsnsPicvdWsx+bgPkNKGptjbUbZXR9wIvaFxE0ejNl0vheej6sUqDZ+BMDYH58Heg9ZiAnnjdWo31vr93oBgbkXE1wlOfdkjKyD/dzfIhfViKRlXwAOuJKzseQ4/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745686794; c=relaxed/simple;
	bh=QzyPSGBTmQnYaqY5HA8HLm4xNq308k0irX0xXUSwrLs=;
	h=To:Subject:From:Message-Id:Date; b=jAg9P6dI50nU0ZfHoD35wbDWu7C3+3GVvtDgPvE9XyN+HXkNf15taBmHNZA3XIBLvZIKL/JNrXyK3XMcLAQ23pD+KWEUC4uox+qhdn0CkwC7l8w/Sie5TrjeF/sEw4ulh0ZBEtXlisqv594oYcyE9elxY+P6v+0qZHEueJZNHJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFAKKWLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFAKKWLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C093C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745686793;
	bh=QzyPSGBTmQnYaqY5HA8HLm4xNq308k0irX0xXUSwrLs=;
	h=To:Subject:From:Date:From;
	b=PFAKKWLHYndaKCNIuddbpvOdl0q9DNjXvByH3x1zx799M73Pzm5z27E/5rkX4YaYM
	 Ybvtj2C/AEJhellF24SgXzryOSaZxUv1JaOr5K7IRB6husoRKYNJrfrQv3xudR94CF
	 HGsyTGXaJVeqP+uVju9Gss3Wpo9xtHSrNbfanUEJkySabDazx18aNEPWDtkmqVHBaU
	 f48Lhpoh/84VcId9BhekxT+wvoxbvMxOEgw4nPJ8TaGEH3qduCsAmorCqt27ZIgJs0
	 v6e4pD1F213GXEe1pDlFT/Ym+embUyJOenPQWD3e9y3k6jMN4kptSeyMWeoUrlstpv
	 JI6XJ84QOl70Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A36C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174568679357.27479.16368102192512668990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca4997b1d4f24b56c9e27244c71b4de28108ad38a64176ade50604f3f10d5ac2
Date: Sat, 26 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745686793
