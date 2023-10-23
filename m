Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B961224C9
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2j2+hL5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A194AC433C7
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698089296;
	bh=AdsDy3PvUChq1j7gWXjtBjoL2M+G9gbswdE/0k0cWOg=;
	h=To:Subject:From:Date:From;
	b=d2j2+hL5/NMX/phVccVIon1duDWMHuKnGyR5KOYk2hoX7ZKmuZq1h8gH/hdKB9tW/
	 sc8sZWP4LpEeSIIrbhNTSCOPhdSuxTI4Da5jilLbBN/YXd9Jswieildno6lhSWaAqJ
	 my56Y5CawvH+gQP9ICgxl/SJ2qmlW3yzPA4gul0bA+h0Dv/aO+xQn0e/T1o6YcWxgZ
	 eHKMDsYRUkMZDIj/RaYRVGgK4buKEjalwoqLS2aF5b1+m4Sqs7WUTuPOnY1k6bhsoV
	 AfbVTYLm2IyOdDIPsNbTh2sydEH5rrN6h2AuwpyAZUEXfeIt0MUvV7tVZUDtitpkQl
	 IoIaSsmn9nxNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71656C25B46
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169808929645.4887.16367631848573805669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0022b5fe95aea11ecb6029bcef270bb5ff0ffefd23ccdee4bca1a1c8cee545f6
Date: Mon, 23 Oct 2023 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698089296
