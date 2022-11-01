Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9FE31E9F9
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66E9EC433D7
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667343654;
	bh=9OQwZ8FkBjiKupBO+m+TobMU5kHspCzR6bUQ+wsfL8M=;
	h=To:Subject:From:Date:From;
	b=PO0jZeZ/CFBVLPPCoqaSHdtjLBfifqt+u+vAvLdw3t813Bb6ZJZKa+bL81qZxNrIe
	 7kpRfNgKhfah7Gb5d2ANwqyBPA0WccqXu6MptiM1ebcH5f3S2afJPzXoGPn4/Poc8C
	 TQS5BbeJCdGZ0PaExb0KGSqXafb9F/exox1e1DEqWmy14LR1YCSzyne/8TFm6+gTQt
	 Lh3nFVF37XAa92BPCVKwn2cYPigaQuN6atjNPtDYIqT6H5/ALdglzFHBeXZRjDr05C
	 KwoqtZ78pe1sC9unZtxEgeGFuRI8Dj8jse0tz2ACftH5wWVdedKgIS+LNFl+JHDquZ
	 vdUGmhJTv8DrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E63C4332F
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166734365432.23676.8013974608465935252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bc7b3244482535c36c1254ab49b885ff280d4e90ca9dc4bb48546a024a778ef
Date: Tue, 01 Nov 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667343654
