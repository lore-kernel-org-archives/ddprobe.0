Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D7B8827
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 20:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2EBBC433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 20:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682628725;
	bh=nI3fZpe3DmIoqYBB3Vqq7bgSqZ9C9i8f1GWuqUjDxDA=;
	h=To:Subject:From:Date:From;
	b=qRpSuzJNA3PDY1LcKUfb3iaXG/n0L4KqQDUbPEjQ+ICzD7v0FXuOf2v4C1dNpumDn
	 TYMdcw7Ijh0U2CwzrU7ziar5bFZApDYIZi6+qFBOaViw3VDEGa/1EOxFVlLPvXTXDV
	 PX6RYWSRfsBWY0h/AR9VsfspXwCx2DMJqe/wla0UOKaOgcS8b++8Y4p7Veq0mhU9r6
	 6Vg3U3H/8APyiLdklE5makhX23SCCXRACuGylvctoh6E9LP6roilSrstiYuwIHwxIa
	 h5olGEfFuY2CCpLlt1QKnDYBgVjwGO14R0SG7XmqAF5v9hPjnf1dT6sEXa6nA+bax7
	 9IwvuPQU0eSEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F74C77B73
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 20:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168262872577.11271.5730428949599304444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eea3d7f82dbafe8a7ef8d8b611e3aba07afc59684b876f08b32dfed14640039
Date: Thu, 27 Apr 2023 20:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682628725
