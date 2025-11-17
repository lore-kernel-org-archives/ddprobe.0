Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE20A2C9D
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 14:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763389913; cv=none; b=kqDB5WbBwlc/jBSsr4NWT5dUkwA85r8LsVwnmyIhTaRFG4Yjvp5y7SQmP0xzMwtqJz0dUSxLN5LgsjuhSA/4pO7deFeFbmZoIBn5vRKegmimAtTmGv33IdjunntwKuDnCSdrKYfuPmcvSDQ3xCH/wrqJ3pJ+2i8lWkRwEkFgMPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763389913; c=relaxed/simple;
	bh=c7bRIaXkMA9GA2HoeyDioqhyaImejZgVbmnXK+IerFo=;
	h=To:Subject:From:Message-Id:Date; b=MCCc/C/TAfYzaoJjAcQbSGA4ACX0B5HqF86bTCk63cU0/+u4dWV6u3+YjR/MkMSHbWa7Vnj+zlnlCnxizd7+7jgvnftKh7bFS6wAgF6Rch89/jQc0d1OU5Q9Fn5XHw2f2EKucBRbmkMU4zb74AhZMRCDMU+ndou47Lp3cJsS7/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8j5sKF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8j5sKF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B34EC113D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 14:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763389913;
	bh=c7bRIaXkMA9GA2HoeyDioqhyaImejZgVbmnXK+IerFo=;
	h=To:Subject:From:Date:From;
	b=o8j5sKF03gs48DNU3kvPBmzNREZTgQ8paT93nqsTPONchzkCknizP50EjNPkT7Vlu
	 umJHzhse5GcL2qdVESZI13j/bsU0rewtsz/cyuP5jw6fQnHFGLbUTxktIGkmDGZa1v
	 LyQufXrSwSiE8PDHoR20h9xs9j21dqmgtuk4JCO8CIYUbFUHbo9QnOtim+hbY1H54x
	 AxkoFQcMC1dy2l8uH7xrSQ6AEiSB7CWVg8rlK0jGSx6Ej7+3kzVjASKaVvHVt+Lc3a
	 P/MoxeIoN2iGBvNMQAwPj0D1msGl6UZMmeYipXpqwqeaTNZq2iMDZ5Rj7o5EBtp7Uw
	 pZwHK1GTZOYDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905CECEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 14:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176338991358.7977.9144683616070864093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 614b53cb5fdd89d20de0367919786422b29664910bf8e8af1237f28ac3e92469
Date: Mon, 17 Nov 2025 14:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763389913
