Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2EB64C70
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 13:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 716EFC433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668432054;
	bh=Up5/aq7GFRCZFMkA3BE0gI6ZQtdNZylcdibxve2OPgE=;
	h=To:Subject:From:Date:From;
	b=YbOROgDETW+O5YLRkaJwG1ClJ1tCPZlXG41wumn0bgPT7D+iE1ye/fh+tMhoYFZ8x
	 v9bC59jB9XBkD2FXKReSUoiSipehbiLYNJOqavw1JJXdnwk35gdJtUMyjEwkUJwwON
	 CQ4P7v2MLX14yQ2ArtuMVw+dZphA8xGZCatgfXlwMD+JbQREzJ6RSEPdTt0C+2d7ov
	 /dj5PLI38TMBkyJHYVD4/UVrLAGpchXNjYCI65RXMOznUudqhucL6q9/PmvCA7ntPz
	 xPNzqGvkORcbGLt0kvhBGm1NBrWsQ1jyBKigg0SdRzlQyMMuj0VAjGlMvKciehOLIP
	 LxltH/oshIaXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52CA6C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 13:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166843205432.21476.2895153195850798187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32bb2cfe35baabe2ef1b30d0f4c6ff710f450c2eb1f9f117df4f601b4aac2c7f
Date: Mon, 14 Nov 2022 13:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668432054
