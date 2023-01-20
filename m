Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2424517E6
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 10:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3529C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 10:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674209525;
	bh=WqxFCbXu509opJ5O2OH4lH0fFf0wJEXTGa+GqaxEtXw=;
	h=To:Subject:From:Date:From;
	b=skU3h6HEt1MIIAPdMYUpnaRL3AOtVTvot9Wc31sy+KlyXoIxovnBbrBhn6i/yyh4c
	 kkRt4MXN+48F9yRvv7Kee5Bg03dasByj4XhHQSe7F1drLSL6JlWPYs3x8exuU5P/gG
	 bZd/hMivFsXZqny/em229RycSsDQPUBAMnfHC09oPZl6oreh6a3FCPOQ1QnCGYk2Gk
	 r00QpTmQzBkJ/m2rzGy+2298lGZF4qdUeP7JD5pe1ibtveVskdwqLDxluZkxkfgiLy
	 d1eG1IcIEmLzrvNQCvNFP24aihokuXYjCyZLk4WdVuxGANpVEyqoU80tEFWjg2KuzS
	 twWHSjE2xxG+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E24C25B4E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 10:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167420952574.24945.2055556831695315650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dfb19d0919f8de4313a3319c3abdfef6d639ce2484078c40bd10a0abd0367e2
Date: Fri, 20 Jan 2023 10:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674209525
