Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFFB4C8E
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 15:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6F26C433D2
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 15:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682522825;
	bh=ZdAKNu3G3rfn3KJUCZb5PS9U9as8+IrdKyA+glWZrFI=;
	h=To:Subject:From:Date:From;
	b=StM1WRSeXzUJsKl5Sw1EiHKfe1gQuuKxCiGd6KEAoS++zU6HPHnKx8Gbk2FTyaOJm
	 XJHlulLOiJQApyRbyNKEbtlb5gObj27zNhQbnULvfeQ38e810+MLxm/t1/0qc4Mprq
	 aaF4pdoyXpTI+THreMj/wwzDOSfFPC/yEx9nhnV/qWrvbLgVUGw0rp5SaIKYKFpWdQ
	 2Twh2MPXMNN88tNtEjR20P+vMFaAKq1X9qS/5ci3nONihxjbkyYK+7P1aoaWWhoqaR
	 KKdEOpteROs4h1Ni0IFJBK5kGeQVbxF9OVn9CqOwVLvq4fyiSeC5Z+zQ0deS0BYsHM
	 9XWU4gAZjzgqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7017C7618E
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 15:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168252282580.21922.6745290892514018119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59247373e88d2bbd901509e001832d3201e9f18293061e2577ca10602ae6a65
Date: Wed, 26 Apr 2023 15:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682522825
