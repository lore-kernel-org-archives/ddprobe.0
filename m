Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDAC34C98
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6550EC433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666123253;
	bh=nQGp8ZxP/ZgTCMOj/SBBCYzeAQfrs6/5LSiBAXuf/10=;
	h=To:Subject:From:Date:From;
	b=tA7k/TrAyybB2i+WWG6Asp4wUnxSWzZIo+QtKR09lX5tdHVVIiOaxGcWBciTOQimG
	 ZZek+gJktzt90Iz2bvfMK2vxwkPCiVCKCzch6jFy/+H7HvVOQXcn6V88fIzYThH1m7
	 u9HEAkdGIi0BiaGfFbg3T8Hrjm8J7jafc1Y+hssJpgntPCBr1N/nVxBHMv9nyifkIE
	 eQqg6OKu47OGTJkzh+lEKPtkz5Xs7Ba0JXOZ7X1Q1aC88GmBUxyVY5uD/HOLp1mGsV
	 7aUyX6LlhH2qvNz1F4p6zPw89naaQOrbAR8T6xYx8I8ZqCAQ/eFD17VpVpMC0DRg2r
	 4/yn/p8UYmZGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C61C4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166612325332.30485.4866177409300128917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 081aae00200661c8e0ab0235bcc7fc0f82186512ea42599c1517acd99da1610c
Date: Tue, 18 Oct 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666123253
