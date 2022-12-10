Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E3A7E8
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D476C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670640087;
	bh=4MaWDMNRXa308KNveR8kOFv/vbAzb9A4ku8r7WcerGQ=;
	h=To:Subject:From:Date:From;
	b=CvGRXmaccgrRiQUMl+B/at6gVOWvCW72R+y2ahBhg/cllJNebEI5ab93ycFRRI1Yw
	 yAnSj/DExkw5+x90G8El4UhuQ3U5k/smTRxaKiGN002LW9r9SPkKB4a6h7q4zF4X/L
	 6enVnswkzzNGzG2/N39CAtS4oHYXpgjWHwabAEVRx7j1YeJ5ADIy4Wr6dwWbThSKfk
	 9RlCZDhdyGU0hxtq7bQf/qb6tOcocd3ru/jMiAP7HpBYj3tZCYgWAvHAdo1InFu4Bd
	 woqM92e7BbL6MbwMiwfw5T7K4zGOG+Y0GZUNChBpt9hl22qOHu2Jq/FWrPIbQkXAkr
	 9Met+w+o/WZsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66AFAC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167064008739.21658.8097731000539242344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f8fa000b88b1fc1d4dfc40e2bd059ff95396eaa86a8e5c8ca8be9c2f2496ffe
Date: Sat, 10 Dec 2022 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670640087
