Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44346185E
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 10:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9sP98Yg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEEE0C433C7
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 10:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697366228;
	bh=glQJg9DUNob9Z5VzN/3mrN66AcA9oEqEzcJqyJfsEzE=;
	h=To:Subject:From:Date:From;
	b=h9sP98YgnkdWnhGAwwlwhBprcGQItPF/54cyvixJ0KqtrloQoWlxRDyxqK2++WB6n
	 /837ldPhoqNPjNaNRorOjMRAL8sEhkHQsCakxPuJPuoB2ImxSUNFc7yaXHdxKZsoSo
	 obQIMYB2njQJxJz99gq4ovXE3+PVvKXCBQndk1fNvmkjZ1pmSUCQ0va0KPh+Y8ZjNf
	 GN4M9vJrtiqGfJKf+fSlRZ/o66F4cc+zC0KKs1i7oL5mNEZ+HXG9bBDHdfMqSXZRs/
	 DqJtIRrgEKH+vbwsvD9QD+I8Ix8jbVlP4q6IyKmjw2QGH8ulFt8Y0YgyXcNQqXHnIU
	 QRNlZR2IPfy1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A405CCDB47E
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 10:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169736622866.3206.16555576426084913131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e78c447c5d9f87f5ee99867fd2c8fef192c4b8befc1c1ebd97352340c0ee755
Date: Sun, 15 Oct 2023 10:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697366228
