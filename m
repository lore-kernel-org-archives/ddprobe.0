Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D29395
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 03:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D395FC433D2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 03:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686023525;
	bh=tbR0wE29uzYRDsZUpHWebVUkIW6eHmgfGCs/d8WXuWg=;
	h=To:Subject:From:Date:From;
	b=K9QctRpvufPQS3LDG5MzyA350Rhnuh21/fCGp7oLvkhcXsH3/+RhdZyzyLl4MANc0
	 CGFNXAYvG4uZmFWzIpk8fM+i12ZKB3rtnC5rQYySKBYyKgs78ILbpl0Jj7GErDyIbh
	 Pm98/5a3+P6qbV15JA/q5b5OdIREtp3yvA0v3MLvdvKAeLz2j7cF2D4/z5vTk+XwS/
	 olCOWd6V7cJuOFiGLZD/Fy5T0/y5HVFdYDepKuCNr8L2WgWFAuJkjMWDTZaTesJhVP
	 0mCZ+7PXsCGYaCAKJ5MuHP8GHF3XRd0uc4HHeX2Temu9FiEWlaT0lnWu1XzKmd9XUa
	 MSpKkWCd6tnEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3375C7EE24
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 03:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168602352572.29623.10165498276717996719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d40399035212656e8242b582bb4908a82ec1c3421d2a522fbe1ddbd1b771eef
Date: Tue, 06 Jun 2023 03:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686023525
