Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E0413FE4
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvQ750cJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E766C433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701510496;
	bh=YHj/P3JG3eh0nD4Ps6uBwz075wvetpdZ9uSITzE3E7M=;
	h=To:Subject:From:Date:From;
	b=UvQ750cJR4hkvokBz3EKbq+P/A6j+uwLsUgizGq8448jv2lnHbFXuu30oh1IEamFa
	 l5A/PcEgSQvH//u4BfvFCEExy0qZV0Q9BmVBW4Rkf1duFCy2oHu82+X5SeANJf7lxd
	 X3iyiIEvik7t9Q6UaMiBwcuKV3cKsdi9ebt6SbQPlqGTA7TWARHG5u9L9uGIpgWLV1
	 dTh+qW97oV9R5hGBZkDNIV1FajlxTfiTl2yF9h8spNjzA4kLrg6uBMhETdRZt5yb5i
	 GfrWkVMOp+sPY3cfPh4WKRRBinh95nLLkNq3Kiq4UGFiUlhLm+1s5Cax7X+WxPlgZD
	 YVzqrhjw/l86Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 618A6C4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170151049639.28899.7405164454955765456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf3869afbd1008a5e086468c9c1186935d6cb8651a6d202597e172b74956bee
Date: Sat, 02 Dec 2023 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701510496
