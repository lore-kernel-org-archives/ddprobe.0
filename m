Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594B77B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 02:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F28ADC433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 02:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678503306;
	bh=KYL58nIWV/6X/vHEUIOunXxy2aUcBUY5I4Qks6sgT70=;
	h=To:Subject:From:Date:From;
	b=Rhwe9zIGs+wPXOUkrfPhqZ91QFmjcimQ4GMDL/HbXU5JTv9JzP5UnXrllcFevsXHm
	 GM5GumnOeJJDBWnt2SWSV0AlA5AaGVn+VcIrZBFBWP1il/OdjTcJ6Xv4pLcx0kB0yF
	 MoXPJnMKY1TbncmmAQoAap6Mpybr8Dvew+9Ar8Ve3b/ofEsjRkLWJuS24s3f5Zqvir
	 LO1BIRJ5pBcv87wRovMChNhm886qZlnXDfpYJkHPV7FVaexntdim56xx+51zHgjn7D
	 cbbdfFQ5ytWOIXE+E/5hqJOdxKlX8tkX3pZhctpvkNaoSG+1FHA4rBntZ4aS/W0nJe
	 yZ8cjHdVl5++Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1D62C6FA99
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 02:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167850330584.12339.15779532864668238644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac5fc8f6c1427521ea22de9eab4b8ddeb28a64470664dc5b7274194247c5ce1
Date: Sat, 11 Mar 2023 02:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678503305
