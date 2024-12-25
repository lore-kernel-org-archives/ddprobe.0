Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E9D24B34
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735118154; cv=none; b=IxaGDhsA9Bbq8ax755dq+S1DY7aCYlAVm0ufX7IJQbAG9nddNFu6cSZzvrYFT3BiYdhTMgUzPTVynmhqnyAF9zAPc1zt8JIWO321G9JK04nSfU6UGTD/QSqWAER3oRnVVfdS+DDMAmt+7ZShdRkizrc+geKyIgw14jCGRX6uWLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735118154; c=relaxed/simple;
	bh=JTnK3ct5crMqOX9rw3ChC93Rd2P7iHkgGHAgv0Z0mJ0=;
	h=To:Subject:From:Message-Id:Date; b=p/VTq4I7kJa8G1dkjhcPInXSKEm89sAaCZ/hFoTV43X38OOT3ZdpQwgC1rvBBdZ542YQBX6EEirx+/WrvaWHYiOM38ROVCY9IIRiu4PbHaQc1bg+K94ez9h+dvsD97jH8kD/wERSCCnS4Cl/AqVYHsnOVtXz7Rh8euQ786kWtE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMCCF/0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMCCF/0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3ECC4CED7
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735118153;
	bh=JTnK3ct5crMqOX9rw3ChC93Rd2P7iHkgGHAgv0Z0mJ0=;
	h=To:Subject:From:Date:From;
	b=oMCCF/0mdHRulPTlLHA6tL0FjmY6QXyfvV5tEGyWVs8thXx8LbXvSToRYj9ZIspJS
	 Yo3d4Yahv4PUBKFaXHGXaWuk5/imQ+sOcHYKIYISyyXEMduJeh2YVppXneJO28HaNX
	 6RijFYJmrG/UQ3+o7L1roV3S2uUFrbmbpArMu5Ms5bLH98t7j85I+e3ur2tuk+YZzv
	 iDVc1/fXQbSl4/Hpv/rGk1mjhJejsuyusdgpb7ZJVCCQwDl13i+vcDxJJg/r/qBDk/
	 U5sFeUxRpsoHnC8R2JrMwWxS2eXR4kLtCHYt3Zn7i5T0HSfb60eOE+8kZ5e6i7d5ot
	 zAeK1BReNhKDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D0EE7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173511815358.28344.5859292908158736203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad21bad67f1c56962219e3146f8a361dc37a73c768cc561e6030ebe9bb9ca736
Date: Wed, 25 Dec 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735118153
