Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8457224113D
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 18:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783879714; cv=none; b=onVVXeTnZ0HOEu08PDxiwkM84v3TrMf20S/wSePye/a0OIzctrWlAhSVk23bAr0aKVraT1Qu4ZWDdggae8IhmLSftpwRv5hzkLr+fBKAGo4xZhZ2CchOTM0upzpPeOhFozlXdPYGX9f8Vp5ROP7UEDf8Xb+4A3kWaFrqi9uS/Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783879714; c=relaxed/simple;
	bh=STTTNTaW37hGD0NSgwrR+V5AlM3QUr6kESr7Iy2Aks4=;
	h=To:Subject:From:Message-Id:Date; b=sDWiA3AaruGPgw8nidMe9JfFmWo9tayMKnxWwsxO/+1eUhRjGRN9f/UwspP0eGb8cz/Eik7VaMQZ79/GiTJh22GUI7++hXjXIt3pbiNDkBo5quxVb4CeYm2PH4B9Q7X7jHa8k5W+g/nh9nFh/sSBE+sGIgBLJYSw2rSjZNVdE2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zh7PqWY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zh7PqWY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAB4C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783879713;
	bh=STTTNTaW37hGD0NSgwrR+V5AlM3QUr6kESr7Iy2Aks4=;
	h=To:Subject:From:Date:From;
	b=Zh7PqWY1Pi71s/8yCAVqlOMBI+aKn5fBJYU2YnCOX80q8UKAU1RTaGAuFiDX9iU3t
	 0WMA+JdJpjSygxctWiYq5aIQB7vZ94ricVQ/Hecyh2aWCnWwgdJI9xXldt4EBTkMMO
	 ALZHiEt8mdvoK+0bcVvEQ9eLtAaiJbmTUCPIYAG7l/UU0uNV4r3lO0TUpXrtb3ZlD8
	 6Qs4f8iJ61V17Eu4rRcSQiXfAInMnG7KlAWJNV6Gu0TKmMmz/FNLaDdBwIt2JD445N
	 CaJnAJ95ovaJvboSo9Sm0n303iFZVJBy311IGpfvkhbdit0c9HiXzwLZEc10Sm5yhW
	 a+J+Ib9QMTQfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE60BC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178387971368.22555.13430309042710559453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59a048faf1e5fe60a4a071424d87f1fa39cab8d686b087942228b3cfe51a505
Date: Sun, 12 Jul 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783879713
