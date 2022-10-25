Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0131A35
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68E84C433B5
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666730453;
	bh=+IbH6YYIR1dOl09gGRkS70hEw5wBUkD++pY1rzreKos=;
	h=To:Subject:From:Date:From;
	b=t8iyErol85s2lkt8uy7oYdlSbzSMXLd7IK8TEpwlnm+elZ5GaOzmpqfzSo/+icOtY
	 xOxoEgY4vc65FAgWVCiFX9t5xDLUFsIWIPSAfiHnRYP4NiUCSSFOg55hZRAAeLn0o4
	 K+6H8NRyHFxHMjKqdVoSWPcwr6U3UiJ+MUKF2YWVrzGwjarOR2aQIHk8MGWHiFmjh3
	 yTZzeGUwWYs8IIs8aVvvnX3XiK3SeOoLATSJznHG6Qm2IbbUiPJ/DP065EM8YKH8Li
	 GbJhO/2hlmTnmAQfNAHk0cWIbjBt/fqQFywSkjc3kQ+xkt/u4vtX/0C1M4i3ad/TEs
	 DAak6wO8SO9fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50119FA373E
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166673045332.7118.11517005678224863798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b4bbf036063b50fed9215cc532c03b90b72bb4a4a73360108ad2205489a0d7
Date: Tue, 25 Oct 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666730453
