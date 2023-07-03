Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55222DDC5
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 13:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD606C433C9
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 13:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688392568;
	bh=SYnpS1n5gp38kJ4npT+Hx68G8i1Ya12RZWggUtKlcOM=;
	h=To:Subject:From:Date:From;
	b=mjT1UbaCyBQRVw/oqhbgA1xs21JHeo7Khe+Rk8sTYZwIQuJxz0xwXuyZAB1W8/FEG
	 XeqHfTcVYRAZ6MCsCbwnKyYiv82NjqPhnvFwa66S9ldfTXPEfHWXKSaLjeLqHAK5t5
	 XBagqv5FVFx8RZ97Li5t7o9/U6R+WjKWanlksdluP6uOwqr70yvYnN6C3rZM+pjMuO
	 HIT3DnvtecSKwR6NfwDu4unrKSaISUNwsFlbyzTHbIO0j+5f8A7MPGRg6JTVafJGl/
	 7zsFp7QZUT/fn0eWlG+6Bk4ADcV/3yseubUPsnxTLrHoFXVFME40CcfW7m7QjEvjxV
	 m2avVEyazSUCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2EA7EB64DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 13:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168839256866.18063.17736788525365764502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d398409d17eaede2a44c3b2491ea07f3e1b29f287c20a3093cea886aca6f0e2
Date: Mon, 03 Jul 2023 13:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688392568
