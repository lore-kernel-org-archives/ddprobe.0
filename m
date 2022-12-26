Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED4963B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A5A7C433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672030887;
	bh=z/PCT7GfCUNx8yeBI8fyJxS1TGbcgDLKGdwf/Oh7MeI=;
	h=To:Subject:From:Date:From;
	b=VdqlONVJw6zusFvIcum70xFAZtay36OQuODR9003L2+auZEue9eVcHVSb2kia5sl4
	 sRzzCZK4azM/8xOK7UTJGuz2GoY/YDPHCLKWC97PQ4Tk7wZAAEXqM+xuYK+xZZ/eEa
	 BLxwJEwrwXNQLp9hsC7akZ1XiUZrtAEriWfpAucYvaqeUAWQJ5Te0cIvcme8hd4rTG
	 n1LxKYgPGOfiGjSWfvTTcdM/kpnkf2cAZRBNsSct6qKE3dxMS+dDcl3M6DO2J6u1Y1
	 YMpvRowgwO2iM8xwemNgxyLkSy+vpKrZKKho1DNAGgnEN5RPlmbonNK22ZLS9AIOYU
	 TUtruB1ZssLOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D62CC4332F
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167203088741.30175.2767845128841670050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2292d31a1e93d70c0ca204b9a8c9260cb433dd1ce74961a5792c68fe2ab199a4
Date: Mon, 26 Dec 2022 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672030887
