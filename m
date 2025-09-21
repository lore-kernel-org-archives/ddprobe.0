Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0584DB672
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758421794; cv=none; b=m7p8yjj54Yy5s3UXWi6yyqu5Q0gh0mFQ3lr71uUkSxwMJCX/57ABSwpLdGfJPYp7u7iDMv71N3+UwcMd8wBMvTpgqn9GTGW/5JhWmMSbvgAqJZD9/D36/zrvGJuem7LdXeYfIyf3aWTghvxdf2k/36AlPVQyKnqLthYkxdhmFVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758421794; c=relaxed/simple;
	bh=QfOuVoSVMLraI3AumX+wmOCB4ryT4BSFhhIUO5HW2ks=;
	h=To:Subject:From:Message-Id:Date; b=fK3ynCcmnbmu15cufNxpFMY0s1WMUk/EHQDWEUpFD4zI3nfTo16VKyHvnAQLJRaqRFkZeu/ZJbm4kq46kKFYzx/5loM02GgB5OsnuHjPXo6UCDxciKGBT5KsdL/LS5lyoDTZeHKABIxodhpxKUEcLyUTfXIirGbjJJiVkbRBGnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KEZMi1hb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEZMi1hb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8CFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758421793;
	bh=QfOuVoSVMLraI3AumX+wmOCB4ryT4BSFhhIUO5HW2ks=;
	h=To:Subject:From:Date:From;
	b=KEZMi1hbzgWrmVVkhceHDAvULcmUZXkfIXNgVYYUCEFocBYP8T4TsZj6wDUu8nEMc
	 t0drMO7SushnFjb7bWnbyX/o1d7Uql1pBMvAcgqpdBgO9wAOYfbHi1vxd/bQBpMBNy
	 ZPmhjLIOC9i/mvEWl8nYx5ye3mqLaZAYsMDayXEWizOj/DCZRQOPM/Bs+5AjRCLKUM
	 EppQV+yw9+QlS8KaQzTMc7Emo06JXZ9Fat3U7NfbRpvbIXmyjFsgxAuzIXmI2AWyj8
	 bD8XoGTWjZBBJRCZCHnRUgz5rD79VsKUtY5darYp8ddpE6EdgSG0VOoF8UeVITv/Be
	 EMKNysw+5tiSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E571CAC5A5
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175842179357.13787.15502207343307125896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b4cd61de2bfade1b70bf4f5942787155709521b5e0c2043ead4e17599e4345
Date: Sun, 21 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758421793
