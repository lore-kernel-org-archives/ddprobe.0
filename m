Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C69FE6FAE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66B7CC433D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667475054;
	bh=kNyvHW3KJx0bOoYBR9ZlezuIPI+R1c0d/LC8xk0Ep4I=;
	h=To:Subject:From:Date:From;
	b=EMc/AKgXLua1ngiWJ/K7+kGO48EGXKCWje7E9r5qF0FAz8OxsKBZBi4riSpOCGGq8
	 ZuHd7uXidC6m8FZ7xuIM7iq5ixjcLd4s2IRzmHYDfa7url5h1ewqc79AOF7lKoVNjW
	 gaZAEcndSgGJgrBFuPpVM8KQev3RTcC5ZwLUAMKQOBGqLDSyd+GAhMsfRrpgSOg4S9
	 FYUcD5+U5kWFCpT10OUpcETiRImsg23FBnPyUBLcg+AWG/SPLqDqf4Ww3GZuBp7uLQ
	 kQQClFEZ39U/nQDqVEMV++laeIduoYXXK9BeG8XjuD+44Rz/54n5AIlKV3JoYBjlzr
	 BxG3NNZjhsnOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F742C433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166747505431.22967.7055112871205360282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e5e3912fc24d62ed49c13aaa8921df39d037aa044c6456aca366a29f7d3072
Date: Thu, 03 Nov 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667475054
