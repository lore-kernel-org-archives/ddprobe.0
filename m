Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC6C32B99F
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787538034; cv=none; b=owDi/fyzz9HzAhYa0SiLK06TfIAUgU2hhUMrhbejLotft8OWTQ2yQrY8mgTWBtj0W4yVT7gjPZs2CviIF3NsPPq2UcGc9qw65v1FpZxs1++FsBxWjPGT1VcjgImzlWCHUKDTfXg5sDiT6LhatKY4Ea1g062Q5tXxqGPknJpn5JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787538034; c=relaxed/simple;
	bh=k8EI3es6kD43haPSE0+IiyiYGQOdhvkv7vEg6I3ZHVQ=;
	h=To:Subject:From:Message-Id:Date; b=Hv+cof483Tv0J1hcKxsQ7BUZwzG1UaAtw20NRBpVXHC5qKTvOEYoVlHK/R9bpjnE4Ena8+9r28+YEiENtz6TvSZFZtFELgzrDxV3JRTIXVmGxtUyKB3Rqg3HkIJAPX2QtcdxybIN+0VbaNjaIgCC9Y42DlNumrjxbMpLxsRTsZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qp9d7w7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qp9d7w7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53EEC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787538033;
	bh=k8EI3es6kD43haPSE0+IiyiYGQOdhvkv7vEg6I3ZHVQ=;
	h=To:Subject:From:Date:From;
	b=Qp9d7w7shPqpCrqj5RYyh9cUjRwyhj7fSeZ7bbZFBk3eGb1qOmBJkDrysQgJ2Dm3S
	 7c1I6KsOuCkeLS/8XMHgK+kxWBhvkFKWidwlHATl1vdp9weepcsvvP/pHx7Up0Ci3s
	 9oBl5YsPp1mZQKUJ45G1sp2yIiQlSO0JbCUktinVlCVco0lth0mGB8IP6TmwljpwfV
	 nMO2opkFHuuM9tyVrafcFiPdB6zjItla/76Ux/peDmaQLIIdYCAgvHg7XAGRXjRlg5
	 JnYJrTCYGWQ6XClhZK5/MugfjlhyWJV6hsuFMJaFyysocUlXFjTbVB5lR2khiv1G/o
	 R4GwEFqhDYKzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF65C5DF97
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178753803369.17874.9092042629037008228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb9877fb84ad9499bbffe6721934cd2171e3734288ed8d9e194443b4fb5b6d8
Date: Mon, 24 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787538033
