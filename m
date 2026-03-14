Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C413383C80
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773518694; cv=none; b=cBTNnJVauwK2B5f8GuCLmNRTBr7l5XUYY11UxmhDRh7yrejysI5ieGmqmkCaHueHKvAUQuep0x63czKS2oXukdIwqKsa9C5waQY92JXC3gR+cKypAkmDg9crqR3TjOT+JqVydSPxWMo+7Ctbh71A+MPRMKTIZfM61Z8Zkd5F5tE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773518694; c=relaxed/simple;
	bh=mT1XPpM/Kzn/Z++9/wIcNRBIc6+L5bbbHIn6Ov5kPpQ=;
	h=To:Subject:From:Message-Id:Date; b=XxoqRHFoawrXPAHsyI2Xi7pvrCUfoYN8vHYk+j6JUTRPlchJE+FPg6Db4HLnHALjV9vEuvOpnd2VQk8ildMpbOZF81GddwwyPf9B78nEebAfLTLcu3z6D87FeQKx45qAI5fdau282jIoZ8CrL0Ku7cFllzBFWqwFpdPpP8Y/tYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5S5IeB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5S5IeB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFA1C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773518693;
	bh=mT1XPpM/Kzn/Z++9/wIcNRBIc6+L5bbbHIn6Ov5kPpQ=;
	h=To:Subject:From:Date:From;
	b=e5S5IeB+TWuuk5tqwHjXN9bAC0gQZT5xzPGt1KVqtaJfDAAKGsnQsdtR/K5jqLHYG
	 R69zTug2op6Hw4QgNQvGFdyfb/SQAeWWAHefd2bz5YO1DjSHkRfEbi+pSl9MCPd8Pk
	 DZ5Jcq+ACne5C9YU0ywsSrjct4+c4eE2cxcS5pDZJFm7o2KMoQYIpNGa8ebmtznmVe
	 dsGmVwusPmLewQSjXcwcsjq2rgmMQW7Ml0c/Q47L11Plkxc/LqSFR/uAhadCBDG+hN
	 oIE8CklNnsnaM2OIrkCN8PYEtCfU4J4v0Q04S1b1ax+8HQCW4slA7S5uBn5Q52yhuW
	 5QX9ih5fAtqYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E5C106FD70
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177351869361.26354.6222873161448844896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d23d0510ea85070cc25ebb59a29676828b57021cbcdcd5f8e2b693bf9cc04d17
Date: Sat, 14 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773518693
