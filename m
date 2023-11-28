Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3F6F44364
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqliK9zw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85BE3C4339A
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701205096;
	bh=q1LkjX810/l01gkOCsVxP/xAKwc7/PxhyKmWPZNKh5U=;
	h=To:Subject:From:Date:From;
	b=PqliK9zwBoFdmt8elMRxSEjMxCE93mMJy+SX6nA3TS8ebS2W0DY/BoVeKej0qI5nu
	 8jRxkUjXY6C2gn+MZld+KnwbHLXTlOOO1rZQ/wUcD8oOw8XXyjET6ZQPZyqlxm/3kr
	 bAq8dtJme8wNP7/g8U7sGU8HGqTTxk1zQu+m2W8mUzq1wQ2bCTEPwYyZzAcZDFx8RT
	 pY8IokP5icmVqt9eHZkEAmrC7hCT0zQgtOZLmfkM2+IeGFrrYZrkOMTgE/HAqK+fgY
	 OkckelhmRtiMtHEQVwgNKbfby4TJ2SvtJJUCbWXmv/+Wj11SjIbsGDTO8ngADFGaJp
	 9Nixw/k9sXAnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A6BC07CA9
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170120509640.16518.8271170839513229718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4170daa9baca6b5932aa04ed62fb67bedf7091b4da3e7beeaf3ae11b9b9c46
Date: Tue, 28 Nov 2023 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701205096
