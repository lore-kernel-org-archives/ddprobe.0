Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0E81849
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 03:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76A86C433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 03:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667619054;
	bh=F3iirPUJijgAOMwmHm3th2yPNN9unVaZRhzM/KoMJE4=;
	h=To:Subject:From:Date:From;
	b=IjamI0bQYygnxMqdh5N8haEmanGzYRNTcy4SL/JZyfrJXRrN8/AtVql4HYttYU+7i
	 ak0Puv3/DzGUV0hu472gYXzKVmw/d0R/UdSmv8SIceON6wBnZCVaipu799yVt6Yt+b
	 4FxO3XUMvvsTX7CjDXRGbvcbB4U2GBh/1NMvlpAG8DHYskH9ecbH842d3Lrw949npr
	 3wjQswgpEduj1VDnmZ20gZvU6ymeGaaJJlQRVkdE1bliBPODCT4MZ771IgMUTpjtvm
	 myzhUucVbdBsvBruYXcfkIUnI6teqYcsp3NmV0kQdeUz0bhGVGijYv8qNJKZAulMzX
	 +loIEenUEChBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58510C4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 03:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166761905435.10308.9287530492872098451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc0c9c49ffde804d517d6d1d8db670d1c91eedd3b77911ef95730b6622dc6c0
Date: Sat, 05 Nov 2022 03:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667619054
