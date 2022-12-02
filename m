Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D64DF4C9E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7873AC433D7
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670002854;
	bh=PLz1zXn+LqxE5t1ykcwLEmGm+CW+oiLOD9tdU2HxmaY=;
	h=To:Subject:From:Date:From;
	b=jgtU0h3Yh1mSnvwfM+Abay04QQ6cc8VyE59IWQx8GwXoXsKZ0bdUbU6z2TdhHCuCW
	 2YNjhfKlcPLfNujgewsfcix5wP2kizMVkdYYyJScWTaVwCaWtZ5CMev4jG2wujQtP+
	 bJqEger3d3iY//BJgBi67RM+505gwEzsXC3w8ubn/ehgAs2N9l1eozCmdygt5zQK/k
	 v+GNV6g+6nJl0xWiiTmqS3wJUyLG4zi6YDsQPIKiilbtpIjChvpZgBWYVJO6FKM+NJ
	 Q4Bca+/NOv40o24MjppoKYgXu/a0ttDMXJv2i0AprPYXaM21VKzpLHpUDyfzZIv/Tj
	 Om5ZkIbhrHd9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58CC1C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167000285435.19823.9049536407050395455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 842fe56a243ad65c9a41f6040451f25ecedc045c33468b52fe20000c9f627c36
Date: Fri, 02 Dec 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670002854
