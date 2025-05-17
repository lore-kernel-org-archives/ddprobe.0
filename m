Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54191B664
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747458594; cv=none; b=A9A0Xkxi3AEQepkz9PjmZBVffAoerdYd5TzX6aEoby/vrQPpT90CFxeJbNw+cWelG5KVYP9sWBSwBP4pOAjN+NIfWiYAlv2bPN98XoGcpZEnCBwNwycD4J/7WOMoxBD3N3z97/URWxfl1pV8kHVTJ3Ce55MuqUhVhFv/8YV8/T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747458594; c=relaxed/simple;
	bh=BNumPK9iH5iG7VU+o4K6RJAh3pFq1ORsfbWt28g5sug=;
	h=To:Subject:From:Message-Id:Date; b=szzmZjFr76ZpK2QNNm9HMmj5FrnhGTYBJbSfdcqUKPLmjGEMeQpMqY5T9wX52Szwr2WF4zwsz4KxM0y/JkBevwMRxVk6SXngyLkf6C0qqrbs5SK8I59AUXpbNXh/4gs/Q2p6MmZgsu6vDOKafMUmRw4GQmYZMzxWda/UO8qlQes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MG924Mfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MG924Mfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59B6C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747458593;
	bh=BNumPK9iH5iG7VU+o4K6RJAh3pFq1ORsfbWt28g5sug=;
	h=To:Subject:From:Date:From;
	b=MG924MfzsnyJJlsrm/ZmlHwYgsLmNjmUigzYJG+K0pDJWwGjzpF6tjrp9+NcHcVhz
	 WiM8RBly7Mc8TCnXLTwahD5LS7yjb+iN4tYAQUZzd84VMPTaL+ycYzAtGtK/+5KKLj
	 cDlhPFOtzGaARvkWzcQVGHo50eOj9BYkuq+zANfiy6RHdMkoBm/Wm974pwIW5q0AaN
	 0k4nFChUPxY7A68jIY0kKUbPESp0uGr6cEc6VYKOhmyi1trFYr8/E2A7Vjq4wpVUbo
	 4f1U+OlawL6WogMOYeYBwrFEBwo7Nf6++renvFbLEp6mkjW5mz9lIsZ1saWXpi+Gue
	 3m2OdN09zXFzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926FAC3ABDA
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174745859359.26356.17908937540213597799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f299ce548843e97356525bd50e03820d86998b3fadf9ad64afe49f88e755c025
Date: Sat, 17 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747458593
