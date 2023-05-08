Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3893C5CB0
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 04:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4287C433EF
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 04:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683521885;
	bh=3lSKClK6gTcRmfdAXWWuFOfX9KX951C70nVevbgfpNI=;
	h=To:Subject:From:Date:From;
	b=HrwpSUp8s1x8uqEJSg7XSTN4o4SMm9LWPMJp5vr32OAknjYgdrvoOaBstKSyINF4P
	 4i3zmnCen+kWg+wt6U8cEfMBe87rQ5v1C3fo3RF52HlJ9aybSz6p40/KAPejlSJOE8
	 ka4FL0qmdcBBl3AnrzgbKZc3ODKSS9l0TL83LWAtXUWZITEnyQw57DeajJ1w4Mt+oU
	 hK6opAbrEcFvFeCHPEnyURnf+4TGSZx6gZBdL5/EVo+43ogUtEi2g6z11T0di3YliT
	 foBtUoGup6r363wjLZz9nNKP+hx4PSqFP4HLEUM8X70vwdYnaHMvw4MaUmye26m6lz
	 nswqJeTaHa60w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCFCC77B7F
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 04:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168352188575.15230.7687022820716033074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 546aa65f5fc85f50914e802d3ceffad5a981b4544050acc46660dc615ab74c0d
Date: Mon, 08 May 2023 04:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683521885
