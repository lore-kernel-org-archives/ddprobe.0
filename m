Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75471378
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71179C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663416053;
	bh=JUHsWc7/4UPBRVTuevru5iwWfag2zpjqyQ8BjRZuM8A=;
	h=To:Subject:From:Date:From;
	b=JJSTXmbHPPGk2LPB9a8ZGUxExb8lsrl9MiGn91ymw/Uu0Dhp39DFPJxQgqZ1tCgHh
	 Mn1EcHR3Cf73Ed5Xj+5gNEZyQt6zz3WFMSiLrGjbgrA+O8LpIZ+Yt9tuVthOWQtFRz
	 hqrKZEGuSrj4PYGmPW82yMGMwWE1tuax4dvobs67E0MGOLEtzR3x9SKP0QACwZHMrc
	 NmWiwAINZKXPYqcsC29uPNErD8c1LBwOe7qXpRsryDoiy4hANK+g2dv7RIiqzV4QgW
	 OEkleu8Y/WO5DXC4HqDAQUHrZasvDLLbQZCCROtZWtOTC6hImLX/5heDTNuICslmQV
	 C3Pyqygw9yN9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5071FECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166341605332.19498.430549773111332454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4867d34b6656c6b2cc3d6ea0a07ae54ba04afe5fee585cabe281d65244c2bb5e
Date: Sat, 17 Sep 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663416053
