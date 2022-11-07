Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7D2D8F41
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 13:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C4D4C433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 13:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667826654;
	bh=CpWcIXzIbuxTA7G5PTO6LtBsiLhRHQSPDToobWLuk3I=;
	h=To:Subject:From:Date:From;
	b=VPr0M1yz82l2phYhpJ18Ip3GjapYW1CAbIm1vG8SVcXwVUq30SDusJzHI0yUYTUUm
	 hIwCPwBHgYxOhl1zTojYMznFriD4xRRdHaOyplhRmo45tkK6wUzkq/2W65jk2PWH+H
	 S2E8wf31i6AP508PPAjoY+hHcp7hd4E/Zj4D1tCZDUspSIjKEq/i1Fut5jLOmGqqlK
	 jqAZ/ryrkpQue59I2kbMpobo+ak0TXLdtMvWXLtni1JxO+7pJG8faWM6ppm+oZk84r
	 0eizWUtjYCelNnf3TraaUFAW9YBrg2/UWlBakNv3dmZxVjocahCFT7v8Hjg7Ee5CHX
	 ymCc/A2hFVVMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5420EC433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 13:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166782665433.7705.4738522115931612602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc07e47047cbce3c06dcddb354b0622da2a0b0547bad7db28d01862ea2eff410
Date: Mon, 07 Nov 2022 13:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667826654
