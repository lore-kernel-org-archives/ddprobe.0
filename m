Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C828B6120
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78863C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665531053;
	bh=D93653kQ5HwKspQO3dNv3jPket1SIejPZA4PhN03B7A=;
	h=To:Subject:From:Date:From;
	b=iMJyjPO+P9xexjGEjzryWUX/StXqSxvY/Y1+HqEA2gmFC7qRCLVUaD6GUEJVtUwB9
	 jXEs1Z0p9XLd8ckZcoQvAKhzwp95tZ2+Zc+/3zF0bR8ZNUNE2NykGHDBkh/Zerr/H8
	 2jKIdnnhAdmIVERiZ0iMNCjxs2fE4u/ZIVpv8DhQUel9L8t/9uuScRnfN57kEG2ywV
	 um77liAyu6cB4VMLNSoerWC68INHKKGLRssSS+OkyxNtA21+VMfdndsiVY+f7Zv1Cp
	 BoUVYKYZczlho8NC4e3NjnyzkBkWtvwSDyYkNN7yZc5oJdC172m4o84Lseqzqo/4ny
	 DZrrq50ihEmLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 587ADC433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166553105333.30545.10993819900486660293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad35303a479308334ead4848125d89c14ba015c00961f3f78450c7cc25fd7595
Date: Tue, 11 Oct 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665531053
