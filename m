Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FD278F3A
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 03:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740887334; cv=none; b=D4HOz7QcB7+SsE0+Tqrz1gZyxpWELoULHXFqyMfaYEFJpvTMIoPQH8GrQw7oq9WjDbyikNZVY+uliGwLCxalesNg4mGsZNqKvmvIC/h8wkpWK0tM1whSa/H2Q6pI+okw78aCjjXzQXGDU6bQtxfoes+1levZdOjBk2iPAR9Ofvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740887334; c=relaxed/simple;
	bh=GlX4iKNQ/w+umITgBRtIpynysq3Ji4ilKEEyK+tgKrY=;
	h=To:Subject:From:Message-Id:Date; b=APS8RFxoA9rApNDQ5UXAbAtB2r+ta5RpVGWn8G58UVgwIPWuzPpCPGQM/89wkyQ1ZkzepcY0juPT5o9d1x8+CFa6hypPmgIVa0nSKEwjxLBska7CAMXabdlv8F7fbQxDO8aGgogxp1gfRQXbgfE/uBgM/Et4hLwmv3R4w6ww5X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJ4GYEkn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJ4GYEkn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE50C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 03:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740887333;
	bh=GlX4iKNQ/w+umITgBRtIpynysq3Ji4ilKEEyK+tgKrY=;
	h=To:Subject:From:Date:From;
	b=BJ4GYEkn4XT6wLbAkVoyTKrbhzIEx4rjQw41bd4Y01j48pGjfThv0L8alRU+Z0tPz
	 jU9WB5cV+gxp58lhcZTsezQFS390lft4/3z4sU7GW5RfKNx/+BOb3+4/PjQY5YFpYG
	 CxOqxqZIJx/Tgz47Yd/5rJ3/uJm79DUiwhWNBc20UMDVWbOfNvHajVtklomWKXOuAO
	 v0IFqI6dkCFdoYOS5PWGf8PzfKI4MKiJg2fd4+rwsBpomV468NHcGjiGzSw9gOXqC1
	 FOxVQje6WN12Eoidm6xGH/wPO6iWG6CdpUXk+d1GQq5z3Hf5B1t1Mg0jMEN+w4HRd1
	 GkysNrdFRVnVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9929C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 03:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174088733365.14069.329996656972120229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6443409750cdef8be03874918c82b8676ba04160f4972b96debf3200289fe45
Date: Sun, 02 Mar 2025 03:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740887333
