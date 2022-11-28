Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD3567E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 00:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77395C433B5
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 00:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669595454;
	bh=1Cr7t+GOkKFPDNEV63VhYBaeaB3hFy1bfA74e9zvHrI=;
	h=To:Subject:From:Date:From;
	b=XatmiumVbidkw95EAveQHdlCDDR6LGlcNI+IUi6Om5H7jKXgYPa/94g7EwmbpjQsQ
	 D6etNIBxv0E1cuSpDEj1pDUQU3DzoHTk1LZsRr1wbAST9GgYa+V0JmKisV4bVCJFEY
	 hXKVzE0XxT28bqieSgv3UJXC6i9ez8PQHqsTrCMw3s0aFIaUBC5u365HAnHr645K7N
	 v+rN+t/gmCLugpjUbZCjeT40po1QA0s4x2JOQGA5GwnkhtyNYuqgFXIj09HDJdwaDR
	 9Cp7JZ2a/MdVD/Jr/D0I0dn+Kj2p+R+b1LOJmgZpfhsQFWzVQSXRj1ceHLOOFttTLe
	 vX3+S0bzKqqXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 552F9C4332F
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 00:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166959545432.16135.2501228123298979619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8290420d0c9e87866a82281b9dc2b70db3959dbf04f831fa52403a13e56a3b66
Date: Mon, 28 Nov 2022 00:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669595454
