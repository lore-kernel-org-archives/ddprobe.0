Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C22FF4C92
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 14:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F0A5C433D7
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668436854;
	bh=lFFYHCkDWps0vjJtXQ3XNqHwJuNJpWp9tCjiCJUT9b8=;
	h=To:Subject:From:Date:From;
	b=eYakHvui+eQgnKMIynHpKT8pR5P0aAfSUkb8tm/n2oPxfebIFUUUtUe22dSRdV+wO
	 MIf9xzJbByG+s/VZqT22QE13ePNRT8Lmkg2aZk39l/QpLdkxUeblItRLLcQTwxEpbv
	 wrM/hc6w5p2VPixolMpRje1/UHfU2B7q5eA5pk9l5DcDRJIXMCLd3HW7OiqF8CYWWd
	 Y9Rw1ZD/bQ5z5rp1RZIUetprcWYSCyoWYwRuxPOujCEs5+Bp+fSTwobwSVx+vHlibl
	 x+dZGROjz2+LXLa+4t3CBYXszJY78JfsV6/s3Chn24VO0lSDBWPpPCf0J8Cyjtt9H3
	 Zar4JwjSahkXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62471C433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166843685439.32158.4913880497362151244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f2293d128baa7a3ef22cc026310eba88730b62c8a289df59ec2fe5e161ff990
Date: Mon, 14 Nov 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668436854
