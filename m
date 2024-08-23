Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D8A26AF6
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724384154; cv=none; b=lVAWX3FqbmPpg+VvG2VHvsd9g/La75q8Uj5AapQKtx3R/Y9u1aSea51M0/wx7Ucxp6rvPCDVk6arJ1HaWnv4oNPOzb5k4zMfyIaCEzTPVzyB5f1VHDyKLus3yHv4rJ345LolRuHGw5sNDn1j7QLxNOuFgb9Xvz0twc3QxfLsn3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724384154; c=relaxed/simple;
	bh=dcG0bDEHteGDR/Nkr0C0JEg+A/yhUai7kHlEsRktlis=;
	h=To:Subject:From:Message-Id:Date; b=mkZus7X917hZVNMFYP7vsYGbwS8v2DHVnDFSzSI0igPl9Jdt5U1Ss4eWosJkjRoclX09RWGcaP8gfXd1WfrNHvkp9HpS2gv8s6WtCn23mbktiM5heI9aRDt3p0CaG//Q12XiHETV4JC6F79YRaAulaA2GK7bvRB8Y6TW6HjI7d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTLhM+Cv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTLhM+Cv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8348C32782
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724384153;
	bh=dcG0bDEHteGDR/Nkr0C0JEg+A/yhUai7kHlEsRktlis=;
	h=To:Subject:From:Date:From;
	b=BTLhM+CvU4aFKde1yEe5Pr8d/IO4HVEZTQRrLLFXuazYsVVC6nza8yKphO8Ndcv6F
	 8odvjUHAQusUdHz8pvQmwC7Ad9Hj0AhkAHnFabbifOks5lVlAlgMh0BZquT5Bu/aHd
	 ciXHTytjwSBmhOM2sJUG/s+a6Igm0F3LsA+VdCxSN/k2aFera718LE1iutSyaoylcw
	 ruBuG4mF7iKa3b/feeFefSb/hMf0bFgRttgLKJSwGpm5JWl44zxYXoWA9tgMVO8Dos
	 DxKO0c/2ZJYp8xfQ2eH1V1HQrzyqeD1EE7uo+yUH6sGe5czl6nc2ym8xfFlIIIBCcj
	 A1fwFsnZ+iRSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9650AC531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172438415360.24892.6274657550196336232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a90f2c329eb30a30bf1255b75aa7291147b962effb59fd28ef383b69c80090e8
Date: Fri, 23 Aug 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724384153
