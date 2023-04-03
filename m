Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB04A954
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 22:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0D7BC433EF
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 22:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680562026;
	bh=CV8o+5vVX8CPWg0usYWu9ca5WIXi/dmv7PgdchvipRI=;
	h=To:Subject:From:Date:From;
	b=ey9U4UlajWHlm5OBzhhkHqQ/EMJO3Osp+eNV0L/U81gIx59W5y8wMEQLuERQPNpJv
	 uCADwRkRgP4QrmM5Vo/Z1ru9Z3H2hiI9PCG18bXBox010Lc9FtL162z5dgEdGNX7dy
	 hxClnbm7jedH+QKoByOF3P3rRer9miCpG4X3SzXIkdmZJw7622E7NVKoLgsy0Xu2HP
	 au7iG/E0A35qVB2CXWHIYuxYJacWpG3WL1u+8t1H2BM6jCGMPlRtlS8VsU2K2MJXzR
	 PPz1NpnjMjyal7LmluMayhiZyBWUOR5BH59fVEaAOc9wuxSa4MuPitg+9geN92IwMm
	 qivqSdW07sAIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8DC8C76196
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 22:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168056202580.18190.11589095085501863640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab487d49705725c02d425c5af3ec9ccf4a6759109a89669474a011760565b75
Date: Mon, 03 Apr 2023 22:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680562025
