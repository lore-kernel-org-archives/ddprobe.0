Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC0F617D1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 05:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71BB8C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 05:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661665852;
	bh=cYZMCd9PAc2SBfVYSbre029E9B332KmHfrPrEOLm1LI=;
	h=To:Subject:From:Date:From;
	b=tIL0DB46TW0M4lKdjDX9eZZdAfRfTHvd+Cuoza95gDa6gSjctjUzCM8vsy6RElGxR
	 pk9dbJEt5EonpkHTTaFJBiySV+R9xXaYj3WXBU4+B4Q7RfVt5Klv85YH0vO26KAYhD
	 a/xxryK4z/YTPvtNjMUpF9Ydx/UA9ka1k4ZzNBPmvB29GdeM7fY6y4pRbEBwpk9oOX
	 CihpVWHahhoLsLI/V73X4aZGgiktn/E8aw5wahv8phirwmmWUxu3NJf7M1rKNt4lnm
	 6xeZC5EfZsCCFJMKud3XENM7XKmWtAEs0EfMVv6YVIFts79YCEUwCqcgKLFo+WhGsZ
	 F64sCfmi87tuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 563CEECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 05:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166166585232.8148.17803582924112364296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d2c2c0ebe217213d8eb8db871d7e7fc26d1e59ef000cf1ea6f203b82291752b
Date: Sun, 28 Aug 2022 05:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661665852
