Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2F1312E45
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuICtKhc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E35C433C7
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700402296;
	bh=teIw1GQAiwArCmoG7bktZEGVuqp1rNbn+9/d2QcxZiU=;
	h=To:Subject:From:Date:From;
	b=VuICtKhc8iP5Pof0bQb2aDziV2iQfSX0VqzYSGiLbNbgc8IJOh6bVuoX75CP7u8J0
	 3nE2oGtM12UnCgGm8bfrlpT6ehXLbmHFgJiVvpJSDSKvioeaLGhb2AJaFcve0QuJzf
	 n3NxLNDP/J+vUtFqQLIolTvdFqrIv96Q/r55JLyuUnlSxVpr4iPYiM5xV4ad81MPpE
	 xTwTDRupXsEbPKLm0M90FdQHAnOo8YQhfiiTSZ0AdAjXJ32hXX7Hktb0rKRYLD8JyW
	 6EeqJItHiTvKDAIZD6X305FZNk7HHT0iWAHZP8YmpgTuZpssYG96tZXAkuzeD3ps6/
	 Xr/3ZgYshvGtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E2D7C5AE5B
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170040229637.30226.6950693516714765686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e93e3df9755f96b205ffeb222c4d92631d3bd66437135eb41d0884059e98efe9
Date: Sun, 19 Nov 2023 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700402296
