Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3580E4A32
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771297494; cv=none; b=rjqegH3IsTDMX3mVZlIOS+k3em8jlLOFEMQat4UAYpnoDqxWuESj75uCh8jXnx3qYJn4OB9u1NC/ZpyFFSbW5j7njiLvBfKaLg2pQevEcrU/iemZNxAJErUO/kfRYRzz1ockf1lwWIJZQKCFZAZ2sCzivlWzAleNcEVVN6xQlbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771297494; c=relaxed/simple;
	bh=+mNT7EZ+9eJvK1fHEm9dU4uM0ijqbu0BoJKE0G2VsPs=;
	h=To:Subject:From:Message-Id:Date; b=tcSf7d2Qad1/7XEpsuZpFg9ROaZ29OWJd2l0iSLd7CuMzoGIcjQVFf6uojyD6ypw2jSNxXxWmgs2ZP+eMi1pBND9rIqVrX5HfYjB+e5avcCfmgTfOeZFPi48XBcO9QvWmQ5e37I5BQujJy/4S+Y8/S5Fy0GgUvpEL2tntRh6DPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHNwueiM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHNwueiM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA54EC116C6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771297493;
	bh=+mNT7EZ+9eJvK1fHEm9dU4uM0ijqbu0BoJKE0G2VsPs=;
	h=To:Subject:From:Date:From;
	b=kHNwueiMRCgSGIMmsQlmCeox4xRt0T1axxvIF3AfkB4bKK3jBnVl+XV3hwa1cAZNR
	 1kK/8PM31T0RSX5Pyl7DvL11zd5fcVJ8unhpzosR4Z90n8e7Y6+hiN0XN3EtSd3Mlb
	 ABlT/BHNZSAVdMrOq51PolfyMvKcinSwJjRv8JByR7mMdEypaMquP2tN3tp7jXaq7S
	 yP7v8+C1SZvJjOTZ66EPfWjKUxRK7hT6qsIUZWY9IWh1Rb2ffxPsspKcJlmOH3TzOc
	 ANFvZGDOtPfZRhIYVM5Qmt0b7Marzz6SU8pAsw3XQeXWNXhvJI7f/ELJKru96yW2R/
	 qs3XGeZjRrL9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27CEE83848
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177129749358.12626.5900743247978084975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba5d0aef41ed02e3608bc0a740c14ad7331baee9810d067ec4c04443b14155f6
Date: Tue, 17 Feb 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771297493
