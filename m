Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88F1054918
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 10:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718620103; cv=none; b=lxpjhspxT66UMVlCptP6DmHXY1E+USzEtfnfvbUxMnwK9kxHasa0PLpH2ytiYjz6frhde2WB2oCRqh4rdocYJ+O7SuXK6xAphm1cxezD3ERJ900tGwsk3F9RI6lN2OwbHHDRavXlWvdTP2yUAO8E8JGOVlSf0P2HbJr0J2PR6VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718620103; c=relaxed/simple;
	bh=JTb/A2IQFBZTabEUm9vBG3H0CgQyvyRzNwhzETwSiGg=;
	h=To:Subject:From:Message-Id:Date; b=BlLvMG6Nrd6ih5Byha24JNMmvMt4PbyaJ59y5F1AW6f1idwJy/KuipjVOmkpg/GO855pjqp1lmR/88QdsapBF6Xbxr3QDwVci712d2u8Kl0a4lJXz8IWQ1RP8npyuCw6eUZ6M5jxwSjNe/AmNhW40hJj+F9kjHPRNhqiFsCMEC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O00CuQJ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O00CuQJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08AEBC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 10:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718620103;
	bh=JTb/A2IQFBZTabEUm9vBG3H0CgQyvyRzNwhzETwSiGg=;
	h=To:Subject:From:Date:From;
	b=O00CuQJ423yHKrqfcijeiXcg0imrxiqWztEe3vd4KOtd10prrzWnRBDtLiZiXzkBY
	 +3B7EAUuRuhcJPqi63f6ihAd7UQR/I4Zqe0xmuLDWtM/CqeQRSX036kPuJfNkF5S/G
	 40TmjZbtee78B7dSYwKV90jNCvYZagPAOmP30b0VA8jMsrfJ4o0EzRoQ2E9YYBnaqH
	 Vr6U85xKkObjaKKNdr1o6h/mABzn8JM1seKNWGgbTNiD4XZw2jmp3cGoUE3e9gMy58
	 MbPLDeYJg+6QbvIttBB9YZD3/QIQvWN/kW+o8UVsOhE32kakd7aWwsrYimgf1ICX+b
	 e+Uxvyh4rCcCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8F78C2BA18
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 10:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171862010287.32165.3408704730258434318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6127e239018657cf6f42c910574b7106f82ba22eda5261097a4e442bb41fceb6
Date: Mon, 17 Jun 2024 10:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718620102
