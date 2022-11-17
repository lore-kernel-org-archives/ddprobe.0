Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB0937C
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E44AC433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668678054;
	bh=esCm157No/8XiW+bpWAUpW/hJtYO+iLY80bwr/H6gMM=;
	h=To:Subject:From:Date:From;
	b=CQf4Yt8uemgLU5TCsT8+8f2HaK7ZMdsTDGRBIpfSMTgtgwukPiM4WCpDDwm+VZ/QC
	 pms4AmnUloz/Lc+n1ojSV160S4KoXa3aQEw/q2UIqv4KmU3aRK7fcl7hGLhmubNfd7
	 B7JNeduZ/4uX5OGsuw2A5hgkpHNNAo4kil4KYYns+Sm9s/ekn7+2TltFDiK6Bnofe4
	 aC74jDTU15QnrgZLMWwDMatuIav1KYV+lEXoVDirmvXj6soN1cicS0yO6yI0e8UtoD
	 ReVYPSlj4dwJ+sEddCf1fO8SQ+9EU165mbXh8xgNqVlL9jP+fBE1Fl70jSIbUo8BO7
	 2xOAFInxRgoZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54511C4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166867805433.4637.17230187792801654050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 937a4e838bdb985482adba334de994988e9b42acb17f1ba7f54ba0fce2a6a95a
Date: Thu, 17 Nov 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668678054
