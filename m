Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E3361DE881
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749695394; cv=none; b=XM/G/DmQtXmWgVsRuVm7XcXjIFdXuhCLo3vcf2625ebegAqLKoQ208ARe8nuMyXhEQpUDVgJKx+gubI2/nK7+gmSXxAm06n/MIfP0AWr7Qtq4/3BylvfsJDbxvczYv+zs/jDH5lCLK+o9c1wEb0FN6zLyH8W9+Fvcr0yh/iEciw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749695394; c=relaxed/simple;
	bh=kuf9g/mDEvffhgXtNx+rElXEIS43mL9olUG3S9Gv81Q=;
	h=To:Subject:From:Message-Id:Date; b=S5kBnT7TXM2yzud+koKC6wNBU7WppYio5Y0+eSFW+JS5YXllerp6Izr1MJIf0elvbeSEaG4oKK3bPLN0+ldI1jgODndtzZ0gtpbeDs9F89UpTxWNKhP+LsV4Zr3pk2sMLieHAQwq3F6P+O9eqoky1ZaqHDeqCemuA6chQzV1NUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yh9lFDUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yh9lFDUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD89CC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749695393;
	bh=kuf9g/mDEvffhgXtNx+rElXEIS43mL9olUG3S9Gv81Q=;
	h=To:Subject:From:Date:From;
	b=Yh9lFDUGgeDRs4iB5Ol7T2VJU+7Lvarzarp8zPrfWId+mt1+Ehs1FSw8K+0UFwQon
	 8heNwpOmTO2a4qKw40dZI2+zNMUPVfXpkn5koJ5Itdp+eeHPtlcIaPwvJHJtRXexaf
	 sX/wB/sNPNiZ2pw666Ol5cuAHOx8NNT/eeH7yFZIOTZMK2f6gXjm2I9X31JFfgmdCe
	 Jii2ewY5XmPxAy9Q/gQd+ALbFLukQ1oqhugpkequHxyunDTmcwb3xzQ86c02lSg14F
	 f32eJiXeGHXoMJC+i1daDGRbmJ3TwqDQrAlNzhVN5MPOSyj81WOVAjNPtQXqXDIOiG
	 djPcPtyN4L5Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98190C71135
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174969539357.14245.6420752556750667622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f767af9a0d2a2797fc8675e0de235f97a118c874f5c9fe6332b92b00682c031b
Date: Thu, 12 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749695393
