Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8145669
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 16:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2758C433C8
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 16:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691337788;
	bh=sYl21Al8S/7F9HZ5rpGO4rpHrrDoZOoA+zlLH8deoJg=;
	h=To:Subject:From:Date:From;
	b=VTrE1ZLIGam8oa+LeNqh5gW33DdYkp3Fv2cYPUQ69+ipiqH1VKLjmbz2GYQv2WRox
	 wblA2veKIh+VwIyLApzcApAiTRhv21Xxxh74b/FeQEu0v5e1gbr2DLR8wnsFJstc9P
	 j2dlIgdqhGk7482IjcvFg2ArSWOHdd+22N/q2Aqd4n6oyHVJWHomZw7QZUduUk/IZG
	 7+O98ZmyQmQaa0Gb7iYuwJE+udZAttNvrEb9rV+8tcTs5xe9cAptBvlMX/8CcMFeoR
	 oxoPeWlBJj+sUTm1kBYXI87ZAA1d8s1MejtemAHNorItf4M8fXb5sbGewuAMoDk3uM
	 WElTWg/pKAFtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1639C0015E
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 16:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169133778871.6039.14950212322673561032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f4cb6e3dae376e2db9118de30fde034350a12f8fb2594fb66427d3c8bf4bde8
Date: Sun, 06 Aug 2023 16:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691337788
