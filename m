Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7ED3D7D67
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 09:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784541514; cv=none; b=UWXbCDLm6xXZMiE5O4i1RMUCfTbDnYfH3ohSsrvRRxkKn5DHvRA4Smo0iO+mKNJXmWGiIF87KR5W3H9C0QVPslTMmvu8ekoXKpCeTrFvvaVuvvgBYvGxj1J0ACwEHGVEs2onmOEUF7/Hj6imt+kiPjHZMS+uoHbr9BcDTtn7w6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784541514; c=relaxed/simple;
	bh=Oay9/cNLIXKoU6bpqfZyIHGfm7X6PMVsYhk0bq9HfFE=;
	h=To:Subject:From:Message-Id:Date; b=rxCV3TO0kQSpZNHwdNRPti6nEjEeO00IW8C9JRFLCqPHvFBqRn4PPbCWvT4mg2D/qSQkjDp48gTwbjxmxjJd03dRFowtptF+m/wmxAKQnG9UwbpzTi7H9GL7oLE1HaUxdJYuOV1SH/z3oETwk2GmPTCEOLbWOBBd3OJ4jo6r7RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vE37/X3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vE37/X3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C985CC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784541513;
	bh=Oay9/cNLIXKoU6bpqfZyIHGfm7X6PMVsYhk0bq9HfFE=;
	h=To:Subject:From:Date:From;
	b=vE37/X3EM9Ru3ZZcJDr3EVRFzbqOjTNxtNQQS3CWtYm0KiA4jQUMN55u66C91VeRm
	 5ieO/o7JTc/oXeMQd3GR/A6dvzTX6mebZI6OkaOkjQvfrCU9N70tzxHEFqPYXJcWBY
	 olNg24CUY/8yzXo/o40E6GuCSX/Y30KluUaRSiJ7h0eP58vpyM3seTii9cwVyjsJQ9
	 6ErmKjnlObeMqicqx/t//uPM+AibW9o7DqldDDkFO067daCGhkxAMnDSPIsF4bbLjf
	 rdjjlsptsDLBJwuReOiWBtci0FIONEo6pqm7Qb9odB1xSpen8AL/79LG8bSp04X3Wg
	 yVpv1purkh4jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A943BC44525
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178454151368.25147.2033861630123060895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9be77e1a6592de40fafd119a69b19cf66abef3027370766beb5fb73ff7decad4
Date: Mon, 20 Jul 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784541513
