Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C77E199E7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 10:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2927C433C7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 10:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689847928;
	bh=FLB0mDYD9UM5wEzIhTFAaXfjawiIrvNPLmg0OPUJDRE=;
	h=To:Subject:From:Date:From;
	b=vDesOSuZo0hxyRhTzQFaELhIiumZwFKyInotCfkuC+5ixpf1o86Gm27v2+uLmdCPu
	 ETYOQEWHsB4WcIWOGEWJX1yJB5MOeyj3oLiQnE+sDLizVvJZIjOEi6/hzRm1fbqBIU
	 QpruDabP7v/zgAjpoJkCXyOv7bF6oS11xFACKArSRpo61RkJqzde8bRgNL0ujyzaJZ
	 NzYTekkVjVXpqlxC7R10PxDeZsSwz08gHJnTg8hyNdhjtYc/HEYvzpFWxG/brg/NPY
	 zAp0cfg6FJtrQA1lJmE+rJYkzLsvVhCZFvT1m6Iajtq4UbrdMwlg7iUO1Vkst61OUK
	 9UdgOCzPw7QNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78FFEB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 10:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168984792874.24586.9179199706096610060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65088db922a50cd90fdf4e89d21bc1a593e746ce09cc09588c7bef7f66d317a7
Date: Thu, 20 Jul 2023 10:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689847928
