Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F12647C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83A61C43140
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663467053;
	bh=nImE14E6UPkyuBhFVBjmYRTlCuunXJSOE+4XPWmwZTo=;
	h=To:Subject:From:Date:From;
	b=nTuee92jrzObP1kQJFC0cVgvtdoSWCCZifRbjXELldUkzzJ15mFJnti5BVjCpUjne
	 NbLHhOQ0njf0spUtskSKoyYFfk+30ac3NoUHQugynf3pVhKYskSnYAazdSfTnhpGMq
	 GZqM4q3OzIXtpBOIGeHeDg+IhHUeat9RUDESKqkwUbmoOHErdC//3OAlVuVaj4sQ+v
	 KEz121+IyN4nDpR7l4FYjaL1w/vhSxRBPxSOiTvTOeAn0W2dwLok9DIrCpHAKuqHtG
	 S5jhGsZSBcCrKBXEDD/CRPuVO9W88TRwj7PeeNVzCN6hOsxAwiqayVlvlrV46cJKB/
	 o/AK3XHPI+woQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68EE6ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166346705336.7308.17914387121818894652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22a719c3ee05dd98b7fd3310438cd36d43e9b228adfc5938c0c96e54be96fce4
Date: Sun, 18 Sep 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663467053
