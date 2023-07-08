Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75DA180F
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 23:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D838DC433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 23:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688859428;
	bh=vCJeGHd1PIu3fwLfzWU3fZFU4plNCJQeWSuck0vEx7U=;
	h=To:Subject:From:Date:From;
	b=F1wfAVFN4mAIHfJ2U2JJsPpve1hMFA/TmbffWo+rR25nGYf9fCP2mb+fLpNJDGZIy
	 TSAKxAzynE8lL/Ow1DVpT8cmunhYci/fQwQxSv1ZzfbrX4OIW1tBYW/4LZJiBfF66r
	 dy+aLN2jnOQ3lulTE88EqWIKVjZD3ZkpkhNcATUw1VXSZ2J7xU9K52PYszbsbFZ3wC
	 VGi2LFuAfTk2CilXNC/VLbXAhGMZGyb7NIiuvFPtA8up48ZRn//1ETHGEEbft1Hozp
	 589zk5KnRgJOyVWJoITSt7UoOJ9UyXiVvCv3ZdoPmwNnEOks0mdPXcT6sWspYuSfTA
	 GJ5sWqykCSJBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6352EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 23:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168885942870.5220.757708840625735109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f01d931ecb74d409db32e18a1d3370bf8068879452ebf0fe13682da7951dca4d
Date: Sat, 08 Jul 2023 23:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688859428
