Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140F71B4F2C
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754396995; cv=none; b=SdDN857ZM8h96abR/EzqezMoJCn7p8rMCtwazjfPSyDlYTrjMrU0Bds9aB9d8nhYCLoMp0i1oCfg+gIwi++qyEWGhP7+rPsJw5HJ4oWUUMedQ+KKynpzISWEGoJsJqcQt7PF6QPSvzfvS1MwBk4xUW+GuR0aEdqRuHYSyz6wq8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754396995; c=relaxed/simple;
	bh=lHMoabpIqnYgyMWppmOUWYYKWUMrlRM7ry4Y3kLxi0U=;
	h=To:Subject:From:Message-Id:Date; b=YSYm8LC1CBRAErzrfOqCalbE3qI/VGM6oFU6q5CpCJOjgA5MOjqzvFnrZHjhSTkynIW7KHsb7po9zl7mi6BL7Pnf87gsgJ5gMK4vIAZ7x+808pzqnykkEcXrx/1C8X4mp5yobBDQ6Ls7DbFcB+EXodxxvLLVPHw4nSxwm4Tve4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnF9bBjA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnF9bBjA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E5FC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754396993;
	bh=lHMoabpIqnYgyMWppmOUWYYKWUMrlRM7ry4Y3kLxi0U=;
	h=To:Subject:From:Date:From;
	b=BnF9bBjAHjmAqsTf7u780OFD36CqDE2bWXJaBfHunZX8WCV18KUqRp2tmpsi2dqe2
	 yBrjU7Ude8Rq9AmWYjisxlvKl9X/XC+DN0eH7hPXvnhkbD6P7b0ZHylpkNMEd+1Sh9
	 w+/qp5mhTXiqFhlW8rCc4kUgAmK6PYnh6trkXz1BJy3A5hSG9Vb5ucTyUBaTVHJv2U
	 rsJQO8SLaj/j0YtJiqztVcGsf0UFP0l6bkqjkGhgVvjy2RfXdWlk0795LArqjsBSqv
	 O6oncNwgloTnoTX+gGnzl03WfC4cuOyPLS7VXhicr5TPx/Dxildb18ATV3e7tD0j6q
	 eMKz61WlrkT7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F440C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175439699357.19442.4042795177342191514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5410ff8953387ea3742a0990374df677c7a6ca69788855cab42fa7501afe34ff
Date: Tue, 05 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754396993
