Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8853B39E
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 02:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26CFC433C8
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 02:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696212968;
	bh=iAkFZC+cXDjf9/WsGTyhl3cGwvIjjygb4X1BGRh857s=;
	h=To:Subject:From:Date:From;
	b=uQ2e6dchSh38DxH2lsE/KnYeuKoqUMxIYIEoQEilkL3njPuIt2LQnRw/HmOxIQp6Y
	 B4uqoia60kTPzGuJGN5380voFvllXXjwdR3q9DPKoRTBP+1m3Y0629fO1t9fLjM4OR
	 PNH45Ut3KJhZ7Puv6DVNGdT6eBd29iy1PCQHA5jAStaiYaHgy+8m1HkCpNPY+QtWM9
	 qYt2h1iDU6Sd2w7TPdHkg9CjDuiSVjKs04kUC39J0Mh1eOSQoZXlggsWN2w4Hy0AF+
	 KM5jiHWDK5sTrIdomv7rBMNawj5wjDiSVjKXMGmzUjErdqbzLIY69TbmOtFXd8pje8
	 TRd6tr23sBJ5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B39E784A6
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 02:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169621296871.29610.14874287060056548315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aa3789c3565cd0f9dfaa04cb2fd639a86790f5faf56a66ab83e0cf22c83d12a
Date: Mon, 02 Oct 2023 02:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696212968
