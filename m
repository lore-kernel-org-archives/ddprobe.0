Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D97362
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 03:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E249CC433EF
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 03:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681271525;
	bh=6znVvE33g+mEpYOaPE3nuV3mSTdqr5kBXgfXNZj7+aU=;
	h=To:Subject:From:Date:From;
	b=DlOu/kq5AqkAKTuka7OsNf5wYk3u2CYWeXw4koOMumfYcxUU8hm/eWMqSgXY7lZJr
	 WBAizAEHndjVJ3EVDMRoanyz+JXd+m3muJtT9you1bmpPP+IE0pp243E14kS7J/KsN
	 k3oT1QC4GLAoJnkfjQPXMKn66XZ2Fvfc9i8wfmAFsiTzC88nQIwMCFygngbLQo/9nE
	 FAtu1pkoKZSFnBhpxWd3gaVvp1kOCxNe0y4qHj/MHD80J0yCXRpQeJI2IZuJ45QfJl
	 ZaQoXsny8BF16AQ9fM3UFF3GtduSOYT6HQMnbRGel+jPSbVI+2RzY/jGkHQOpZi45k
	 Hz9LI6brlCapQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF16DC77B6E
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 03:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168127152577.12118.252633778281596440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 133ecb07ecf5b6bd932a14d01df017a3800499381a64aebeddb08e5b787d9e3a
Date: Wed, 12 Apr 2023 03:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681271525
