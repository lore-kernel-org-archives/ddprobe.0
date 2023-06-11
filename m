Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FFB853BD
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 09:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 007B8C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 09:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686475926;
	bh=EUc+myHIkejAXG9I6e2dnUYVFHXYMtC3/ICWYXPOfHs=;
	h=To:Subject:From:Date:From;
	b=aGGrlp0YhrS0Mcfuq/13qYhwv/ecyNKjg3VnOXVGmEP4hXFsdoOXu8oU92nCAuCgG
	 v6Axpzi4dLd63EBmlmR+72zyrn9JK6/+PobKHdPI7wC/g7+Wsb8yl3p7OTdFRnzpsr
	 OtYjB2pcQSjPVlGldCHUlATq6N4OAPuURDwX2AR84041pfa1+LC2u/lqqtpv/FRcSK
	 cQx1MXVg3M0YT0KilOKVbS65uqBUhuQfSZDVsqhDr3KC0iOH8gRi1+8LV2ylK1f2HG
	 C8rapEbsnbc81joNZivs7x8vWKbR/RHwgWV6Rh6pz6jOJgJy/TihV+XFChWCfK1uyj
	 qWk9nUt/lSVGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D06F3C77B7A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 09:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168647592584.24784.4255192721062333950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f67a8d28ce8e5c0d89fd1ec0d033e74c76c6c1719697511fd676e3c4b9ec240
Date: Sun, 11 Jun 2023 09:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686475925
