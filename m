Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC34C15B1
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BBA1C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672483287;
	bh=WNVDIEqmukfqRVAez8jOF7WisrTWxmlz00feM/n/4oI=;
	h=To:Subject:From:Date:From;
	b=plgxMqsF/mFsPGiouDzdV3zSM+ulqaVANCVvsT120eNExyffO/rENbH5CyvgwD3Gs
	 Kt10S6Z+YEIc5DveuoKtedTlf+foAPw/0d3N82DLzGnc0C+txTrY/P2IE9UPT4SJlC
	 9+BtmIqMhpwsa2dNv/5bPE0VKWgPqtvIwBJ+jB9MN13NOvj+OjNQWd282RHXruv2w9
	 RyJzFNgxN4AUISRYlUvipTqmVQszhIXDx7Rc7+/75aqDtMKHdCaDFZ0juyaomtF+ht
	 radJrqxUM+GsjcsgiS+XxNjMFukGqMYKj+SVfauH74GJt1eVhHcSIZDNwSvnXfWKWQ
	 ciMKZSy+605EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D2BC3DA7D
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167248328738.29436.13083732602246472694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d6603ad09e46ed6ee010465a3ff25575b09c09f777c2e87c261c9b7b53ede0
Date: Sat, 31 Dec 2022 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672483287
