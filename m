Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACE9288C2A
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746628195; cv=none; b=beVVx20OutsaXh0z0ATa8YTGSuy9rYadX0wPfM7Gz3VB0IKDp6zjrVkiAgg/EQc3NqCLolvRzfYOm/eK1CU63Nhwm8+DnxxbP3tP7SBMT8SucvGPaMo20z+3DyfodT3/b81opeGwTknNY+/9h9P1xX8konphhL8qnCUXoQ8Udjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746628195; c=relaxed/simple;
	bh=IPmIgF67l8hpab/l19eEGvA3kM9NV6YGjqiBdoc9+3k=;
	h=To:Subject:From:Message-Id:Date; b=GUzygQnDM2p2YvxgulKz+9ZLCaUu9mXw2YmGH1bkQEtqYCKGPZv3BdkXBgrnGEUWB9JSFJEb4Jv99Lfa3zquoek5JjDMhrxQFO+3bC5YxLoAQmGdaEgTugDMuH4yLqLW/QAO338BsYqNVgPOmp+GP79Lsf5Gn0Csk3mCnwTNZ+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aR+DZue4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aR+DZue4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E066C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746628193;
	bh=IPmIgF67l8hpab/l19eEGvA3kM9NV6YGjqiBdoc9+3k=;
	h=To:Subject:From:Date:From;
	b=aR+DZue4TQTpWF02Y5PbRgM1m1JdHifHn97BJFYihoJmvxEFXPhSp1kkiP5GYZVTF
	 sj/sY9X3+ggo0+rq4Wb7T0WvPAz65+3Up1JFsQ+oe1T/V054jF1kcxJrhkGxkc8TRS
	 EeaSyaKn5APLzozzCA68fEgKov4wacaup84MKtvbIsFchOBJrOO0waAomVHvITqR76
	 GYxriRF7SbDfsrC3lhfGeLqF/icLFFsQgzQt2vCjmOv3s03CJw9JaV6yasqWDrB8Mu
	 yB6WWJ5ClE98KqnNdHmBX5H3wUhKtDUZ30ISSuh0zRdPqayvkjXuJDIH1HsJzVDPL/
	 sAnjKlB2+A4Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6FCC3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174662819357.28951.4602895926566910928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 015431cb4de57eaf5c910ce9120a39b88dcd276ccc7238dbe774d4f803ed5bdf
Date: Wed, 07 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746628193
