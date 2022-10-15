Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3CCA620
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73492C433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665796253;
	bh=bSTlRRxlM7LQn3dugX0RjWnLSVUkhRmh7JQOKrOJrTg=;
	h=To:Subject:From:Date:From;
	b=ISXc3p/OHToSpVuYHqmkMpra6qh/82jFxebv3uh5k/nDH5kJXvnpZonp2cfRkctxb
	 Qxu8hUo+XDs2GQLG6OQHSnGtwHC/+25xMq47QuVXnv87VFH+IWItbSMCqahfk04rD7
	 Y9XGsKTLYSvlv/cbi4mbFW8i6wIaMTmi2WVtlMj9UmGxwvRNYwKYTgmftxUQKSNR5g
	 qE998LLqEpMyfMZMDpPhNQClsRhKToRFKwTESWeygEZZkJy/8oJibBDscU0FMn1cEh
	 YI9IdUwvvvavjPSM84O3/3OD8XPS/ADU/0NpvOrhaEmpJZhlzIqt0Tyd7iqpCLdSP0
	 WuHl6cKhxdEsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57487C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166579625334.20971.16786050502227601609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85f582d1b02113242b1ba25f6a2330aa388a5b8d38f37eb822fb67d032a27f32
Date: Sat, 15 Oct 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665796253
