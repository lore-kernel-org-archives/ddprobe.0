Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177D918C0E
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpVMNUqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80F49C433C9
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698681496;
	bh=6D9VAStgcjmvk2OXxNWqba2ok2fvljEQxBHiZV4cx6w=;
	h=To:Subject:From:Date:From;
	b=EpVMNUqnjVE5UVmGXuG4yr46QOyAbEqgEAhygH1VvBu0yn+XOlvM/xVq7NS/0pI5T
	 Y98Z750JaW+oAd0ETPt/yb+7emJVh7W+bI2RlsxB/DV3siAJly4Q4TbaqO4QzbErKs
	 OEzbzuKobdVrePgDgng/Ov/In8WQy0gRjQhwaADPCRXBkRkA0L/hDVAJALI+oJ6tAk
	 6Nv+zkacwgRSs9iUhLqoxsb5+i5IokN7jqXrprvb4zKiRFqyQuAgmjCU+UdtQLPf5R
	 Q7I86xM20vsf42vIdqzDlybALkeVafwe2z6C9ASmYort3UWEweRIXGaBGf9ApqOR7e
	 ZA95BlXC3zjkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60638C4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169868149638.10019.9028635784581828048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80932b20c5cace68c3637fb55563ff1b046b1e18a20ab17048e4fc234cced390
Date: Mon, 30 Oct 2023 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698681496
