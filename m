Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 798EC111B8
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 13:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E08E6C433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 13:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685713625;
	bh=OpHjldgc9P/lVCWC8XEZlkggBYevgiqUpffCSJfpcOA=;
	h=To:Subject:From:Date:From;
	b=dRNGLoxwAwmWvNoZkBssP8nW6uXXB8+RSYgGysH1reIycWK0NRmNfyAX09FFROMfx
	 xqA31NkGL+HHOExQ6ygx5WppLuLVvRBRnTBBdPN58GweHde3aEayH3G6ruFkwtBLgj
	 WiXWB/hXJ0nLk3hLzZTRgufBEe5Fp2/+CkYVu1BWtx6JDe6xqDlw+vjzb3IDRSy1YU
	 Vv3ohHOYlAQ8hBzWLiWr+fa6Ds+k4a/lJ+0bmE/71J6WKoASf+Xn3IpfaJmmw43DwD
	 v1yJbnUqGy8q0MPfzZvtyc+kryNDKtjsKutEazjkzf07EXyAc+xjlyZhyLFhmhgIRY
	 IiFLUE9UZ6kVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE50C77B7A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 13:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168571362577.25252.4678476545241855483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daaa86a9e27d04699254530c655119c05f9f6adeb8ba712980c810a095417962
Date: Fri, 02 Jun 2023 13:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685713625
