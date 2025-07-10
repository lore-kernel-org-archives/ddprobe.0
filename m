Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECED8F5E
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752157794; cv=none; b=FnhxKcBd3bfJwt8N7mb6yvM1LebrPdElhgP4oIGBmOEPFIxH2c2r/0j2ghBfw+5NUaj8/TH+CwTMtsBJXy6UbHTjCDnUumeDDFx5JwhzV89POrmXZdEuQou29mggtAFn1TKfvTqztHuULXE/g4vPb7uaA9+TiYc/9MCVi7it6EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752157794; c=relaxed/simple;
	bh=HhVWC76g4eb0Gjm41fU/ewMqztZ5rxdKz8jaTjmN9AU=;
	h=To:Subject:From:Message-Id:Date; b=nejm4/NrIqbRMT+EatOolwsrIrhmJqgDJqVCphuU70LLr4bJj/ruHqca7A5rb53/0uG82HG27DWR0mp3mBBAu+er7CslaZACLDXI4xnOyjfnI/vG+qNmmI7I4yMOckB29tMmLuH/8mJDzL/OQrQlv+LHFXN2/+s0+5SuCO/Kil8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daA0b1Wc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daA0b1Wc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A553AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752157793;
	bh=HhVWC76g4eb0Gjm41fU/ewMqztZ5rxdKz8jaTjmN9AU=;
	h=To:Subject:From:Date:From;
	b=daA0b1WcDm4FYszBYt8u2uc4kazVUuWMzqDyJUwvJTcx3Ze5lHqUe5HwLFmgUDoTV
	 DqHvNNMVBOQgmMfUHBykp9v4vSDlp8yO3mKcBn8n8Gj8d6nHroEaIPAUZxr4svSzGR
	 B3oe/OhIL8XFVJA6s7Lr8oMm47945RXK9nOeAFGuiecb7ufRJxhXX6GdJCN0zIOX0m
	 cORf8HCPlNvv6g9jjdBpihITyQ1V5k625BU3+aJR2F7q4U+EXnN0N9EBLGTvbVdqz2
	 3Ntlh/mILGxmDX2vWk5vUFUMw49RnY/15NMdgg6U2Jb9QF2qnA1c+QhtOV8Q0GZZxY
	 3ru4CgdpIpbOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A8BC83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175215779358.23000.5233375290321351531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 627e356e1b107fb601023d08fd00567696e7ebe4cb34f710e977074d6b6e43ab
Date: Thu, 10 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752157793
