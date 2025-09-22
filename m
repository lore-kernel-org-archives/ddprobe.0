Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B73C15A85A
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758503994; cv=none; b=AT6Sc+J10GHlQF/jJn/TRkSL54kMPFKq3fDop+H/nR3RplOdQKWdED6Uy5NKAIN8ZsmsRuxzMJX8IBI3541lxholfV3W84SGENdflA39HlHXG6JpAqrftnfXOlbvbABVsRdIn+ngXqUeMZzKf7v6RjKgdu3xLSWnCFI57gZnmWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758503994; c=relaxed/simple;
	bh=m+lmiCjpoL3oc570o3IQ/mlLsiYAGZWo0mgTZsY4Yqk=;
	h=To:Subject:From:Message-Id:Date; b=Yd/CrZw3uYSh94n4sJ7KuZJb9VOr++6/DPpNePTnISLaAltzjG1BUvIBsPZUj0Sq6/EBk1JZBQWiZ5UPa3DlfhEr1l05IEbxmxgDJKT/wwmmTlEfnib1RdKIwn3Tgu+m15ed3rfO1KoGF2wxbGvN9YSFB5G1KtvEaUKUbwPZVjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqeOyIun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqeOyIun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FE4C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758503993;
	bh=m+lmiCjpoL3oc570o3IQ/mlLsiYAGZWo0mgTZsY4Yqk=;
	h=To:Subject:From:Date:From;
	b=WqeOyIun9PSgmBWDXGDemiMpvdkIqNq6wwxpt3OW7d6s0/ZqKnON6M4B1t1nEnegl
	 JGW0UdiV9s0GvwFEaZtz9oDKz4Twiye9myjF4rIbJFQoLhWFXfPl2F7iJsYHUPiJct
	 RR00H5rLOSxN3BniEwnyWYXinS+POiyuSyTW9I6r5uNtOtKJlpww5GA0kpoNOqLWQS
	 zrSMO5/mCX7svcVPGGrf5jvf7UgMYLFo8WztJoShHoLETD+NJTZ4cZHaNAVDcvVnun
	 GPnPpU7Ut747ub2vTC0yONBSI/eOVFDdPgtLxoLLqbpx28y+h9MBlDJGyw8ZGktIyZ
	 9uf62C6rLFisg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C89CAC59A
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175850399357.22417.13297110217299437931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f441f784adaf6874d9ad0b33003c309c2dd331888e97ca2c94448fab84fd4efd
Date: Mon, 22 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758503993
