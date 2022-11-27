Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEA26EB38
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8586AC433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669515054;
	bh=exiXClvMdZGbjN1zGy/Wu0fd0Tqauu928uXYcotg4ho=;
	h=To:Subject:From:Date:From;
	b=cie/abSPXbLyAAkhfmGKjKEBGRma35iXXbJ2CVBq6gBbx1Y1FmcxYHC5jAmh3KLnm
	 zfdtY4pp76gvkRxrpgMykHrjPW63txEhB41TfyjxcUNyRa4n7YtUzIzuKQtjyKZlKI
	 ZMYZZyMby6Q3Ocr3ggvwjyaCTioPXcBVgqE1ipKvdITwb+fGKMyXTdnOzOjvlMzor3
	 VZVXw83W0cqaHrZ+g+B9143A7mH0qDKmXRwKg2dD12YYu2XujiuC0dP4AQxbrWECJA
	 ELBeHKHxl6FRgRnclLAJonl+NrZw/YpsrqqpWDWKzYjJ482xCV78S+zIgC1TjOQ9LO
	 U8LFfquTN7M3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FABDC4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166951505435.7673.3823758081592709777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7590d2b4fda921848b130c1252656df405a0969890a5f15144a02cbfa7ad8cd6
Date: Sun, 27 Nov 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669515054
