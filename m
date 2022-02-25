Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B952184D
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 05:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645766784;
	h=To:Subject:From:Message-Id:Date;
	bh=PWPLr4VDrg/87yoZmq0vRBwcdSgAavrqZxhnJdTfOy0=;
	b=Bx/Npus2ozpqI6xAawxxeVXOmNLNNX9vmOEj/v1w0gSWotagS5yAvNgasum/ZVYQ
	LH57NJOGOko0HaZZ5Sx+eqAOSBPaKKB8e9kiJDIRXulWxGSxZeIMV9oVf62VPMxnE1/
	PpWpOalyY2va6ScMOC/mkUIfbOQB7tAnmO2Z3Mps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645766784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PWPLr4VDrg/87yoZmq0vRBwcdSgAavrqZxhnJdTfOy0=;
	b=Q/SwCFfn3a6tgwydBupl70L60nqLdrixfncErbPAAAI+sMCenywF9rc5P4mc+oML
	99bqUtxoV8FHrlKtjXJcglKTEECTdTJH/Gqe8faXlksFTZvXTRHfd/HDaJ07r98zld/
	sKTJLUhCfRSBCIdhCI2sg+Gw7phEsfgMvg0cfMwU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2f5836bf-05d683ec-e803-4bf0-8cef-8a13d6344045-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4489d83e8ebff2b42959265c40ed04671cbde3d3e672750102f656824ab1d771
Date: Fri, 25 Feb 2022 05:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645766784
