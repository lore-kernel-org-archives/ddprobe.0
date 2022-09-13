Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D400E66E8
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ECABC433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663096253;
	bh=aJ0juiGrEiyAr6MRu/Q/xo/QEBoLiV42+xxPrTMymqA=;
	h=To:Subject:From:Date:From;
	b=c+Gc+RdwXwMU5FOXi2xOlamyCBbUYoBiTTaDwjd03gDBYhU74E+CNWzasckIdoxR9
	 pQmA6rpk2ytjFQpUylinOzFZyDnxYu3oyDPjP7CyaJPggYIch9qDOr+xWQ3/cszYi8
	 IIowftD8bOnaWG9fdzm1lIuZI9b3Eomanln7QRw0AUwQNd84E7zv1mmW1BodNguw78
	 wQuCz/QjrBOIQPZ72FWtyWGTGGadQYtOzFfiTbM1Wh9cSjZ/apFFizagJlR7VFEYeX
	 2h48lYyiqS4hbxKF7RNdK+Up6m7/fD8TuWQ4fAkQMuqo0UHnpELrYUfhkIvAjmViQi
	 8Ux71Qh+UXabQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60629C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166309625337.27403.7670313518644605902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebfc9e69981e38aefe2cbf16176be422851ff79eb0d793464afd106ee14052de
Date: Tue, 13 Sep 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663096253
