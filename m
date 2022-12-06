Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6CEB194
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 00:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 711C8C433D7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 00:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670286654;
	bh=Fav2xuSB+6+ud92+vWqCM0bhWVbtGtEYdJj/ldRzc/U=;
	h=To:Subject:From:Date:From;
	b=eVPyRwAqC+kuWVzRTIqhkCoxeaQxo/mlP4WsRgfHzQXJof8Cq6gy6v9+eE2Mhy0EN
	 ZUDkVrQRm8OhjdS+S9U3j+BTivTqY7QecOs7fW6l6PQWMwZOWocAWck39aBpBIyFbd
	 7JQlLaPhNwdREn96H0WvrzU3sfbJTUj2+Cf5geTlXH7IbhBDByyX3W/1A+mL0+GGy0
	 wuWjhs8eqJfTab5arHiO88i2XGQqMCP5jGn+dk4K6XAfHsePvA3wgiAPdoZuQVjqoh
	 wza1w7S5DNcZv8QBZYR1h07+/vgwZvvBUGrv5a0lHQwyFKKDsfD3beG7MVL7UjQan1
	 A98YJcNWnEmRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E65C47089
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 00:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167028665433.16697.9369570227714552960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bf77e97edd521676a4f65c3f1468c3510b8ade5c0c852f1e53a0833991d26ad
Date: Tue, 06 Dec 2022 00:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670286654
