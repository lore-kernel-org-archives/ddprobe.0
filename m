Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0DEB20E7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B797C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664859653;
	bh=WgSOtFT2PyjdS+Qg5vyFFCAZYviQflTBblKpu4FZ4QE=;
	h=To:Subject:From:Date:From;
	b=BrxXugTcIZ7eTyacMqT5IOUvw7AaZJQkfRcU/9hRzh7K15S08I/7dqbIeQiYHPRo1
	 9s8rxZPM91WKHcEmyUxljwocmYc2XCpCoaq1nbX0vAj9AyT0VXw1PiMc7xoHN8YHbN
	 2f++nEDj+JYJmRLCRPsEhOmneYPsbAaHX+qTrl8egc+p5aaQ9bC6lvT2H2DtF/vBSD
	 kOqRxpfbfwOs8LcODXbMh/eNoHiRe1nLImec7R0u5k2juKicrAT0/aZSc0RhoFFNhp
	 xqrAlcV3oDQz9hxk6WX0hUzcBtH4rUQZunw3aTinvY2zTXkFOeKTvM4dN/l3BBk90S
	 6Gif/LErXRaKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55342C4332F
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166485965332.12912.3939100158445250463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8412613f709c66b5e56e1a2885118c0bd120ec26d5c7dd8a6dd8d3a99c02a8a1
Date: Tue, 04 Oct 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664859653
