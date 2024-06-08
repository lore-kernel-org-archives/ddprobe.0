Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511CB140364
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 16:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717862843; cv=none; b=AU9MbXfwpaFU+K9HrfXyRJPCNj9EGPRFtnASz5AEUJrvEOAoraweKJojQGBhOywygR8GsqW4nCbdtjjapHznq1PEABS66xGE90z93g98aO7eZLVXIYBfeomPaUCyEWO9gEVTnF/6OaNsfyx0sHQJzs2MRCceaLza5L8pZPhP5vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717862843; c=relaxed/simple;
	bh=Txal9ObN5NH84VLmwulzL3/FuJQyJZZDUwr49WKJEks=;
	h=To:Subject:From:Message-Id:Date; b=rfiLWmFsuZnTB9cYNhcmtbn4Pye7KT7IZa5nbSc2CkPSmjyUPpQeDy82V2itK5u23cXKG7jJfryiSMXSMcx5km2bdWNekLJ2XDHCW8ZJiW9VXBreCD+3Ru41ULUJvhs5ZBDai4p+bgz1PJ1bqna6OqlTEjr+OiPosamUWXrKoKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wj94MF+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wj94MF+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD2EBC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 16:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717862842;
	bh=Txal9ObN5NH84VLmwulzL3/FuJQyJZZDUwr49WKJEks=;
	h=To:Subject:From:Date:From;
	b=Wj94MF+dLuP+/PBDJfWUE0h6sKK/9Z10SXE+gSGtumCAkuncRLSEzMr+ILdAmXUaW
	 MoUx257fT7lyxtxt1EXydxq8ZHp10WIlBcxKLFkN5/9TDdxGLlMlUhVu4PCWgN/xKi
	 CjWSV0XgfmEz3+fnsj66mP37qkD3aeP4ZKlnsqVw76G4O7YF1tQAjBodTW/ZIurvqq
	 dZ0S0nkyiKdEqe5wXPHTEolnVUnuZxnogkjAVoT/sDvxc7Qun2Oqsp9qsp7aIpJGgW
	 N4R6YDVs1kPJnPLPEAu6sUpqkp71hJsr63lIZ8fnsa8CdGHqw8lIIBRRa1pzC7G7wT
	 nWZdhKxORcS/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0EDC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 16:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171786284281.17116.9898985503994466058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90781916899d49e5b3be2b567578dfa4e598442f0167ba86aecd55a3da3b2c3f
Date: Sat, 08 Jun 2024 16:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717862842
