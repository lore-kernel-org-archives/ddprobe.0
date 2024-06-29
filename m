Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A028208C4
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 17:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719681263; cv=none; b=VgGoTUcLGBWQwSayAYKREd6zrlaOVLP1kn/NNdNZz1i1Av2vz4VyyUuWnsLdF8kl30v3yyLdqdaGE2FFVsx/w3TIx7US6hg3j18EIMdNQUFNPkzSf06o+je8Z+LwacYOhFUQHT28BWv3m5nHeb1/6VdhxfR6QlhyUN8jDryysns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719681263; c=relaxed/simple;
	bh=pKIg7xHFCtanBXyhVMSvWBDpl6FBZH5YIZBGFNmVktI=;
	h=To:Subject:From:Message-Id:Date; b=ckyMciiRB/Lxny8WqVYws2of88TuNSR7XtsrD9jJtGFQrJIceMkZQ/k9X6VNnoJeEPFCMbacdHqDQZPU9mTnOkPodWU1FKyKOIEat5HoBpZE+sHZD+gT0ZXGwE2WAu/YxlPRjZ8bBkKzguA0Jve43HfKmhysuNn9/IgGqeEWmOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0nsheIy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0nsheIy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D929EC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 17:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719681262;
	bh=pKIg7xHFCtanBXyhVMSvWBDpl6FBZH5YIZBGFNmVktI=;
	h=To:Subject:From:Date:From;
	b=F0nsheIy6XJLlesYT9l6m88afkxGc9YiiB7w14M/EjAQ4WtEkLHOdw3oyeOjte+Bw
	 Wo9oCLP50WjCCh+LHUbDfdpzeVBCNjzWAjNaHWirBjG6Rl/lIRVlrIM9urwgO2uT8/
	 IWKEefjHt4c6h+ae6/heG8KkbL7lVkAeF1yCw0iRK/pAHh4GiYgQxkwCU4V8jz7VIn
	 jJrGk1CTFIBpI4PKDcbCeIqbKwBHrJJMEw+TaAGpcWhV0Di6sUaVC6QH6vH+4O//V3
	 4EwRU2B6cHCmyEtqiz3l54TqoBtGB0uKZe5HccNYUt+Nic4n/H3QwNr5mOsBbCbKun
	 IhvlNo2d3w5vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CB1C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 17:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171968126277.27360.11437037584436859732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c72a60ea20ff636ccea474641bf52b5d1c99283b630474766337a53d863973f
Date: Sat, 29 Jun 2024 17:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719681262
