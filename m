Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CE32567
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 09:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E252AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 09:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682673725;
	bh=ELf+VG8BSqN8W3mq4Lw/U7ynex49MpO5w/K9rgLkiJo=;
	h=To:Subject:From:Date:From;
	b=ZrdZxS+UkiZVhJfVBOB8WiB9hILtJaFGzerj0dtgjrc28I5tTfLAxIzZxphEgdzc0
	 wnWxpTVNEJqG0M8JuAccVTh2j0p2qdXGuKS63kZJ2LwjwPY/s+IMdOu6Lo1f395b2+
	 vQLlKEVKsF7QY8I0xUp0IyVGO97bBF4dODj1zWNdT6Usjqefq8VMbjRb7elDZAjbOu
	 s2qdCywp5QiMoYsqOMJpkmR+vSjZ/sEVmyccyQECSO6g852oFl42DV4ykzmajkxiL5
	 s9w3mb1Dnv04CSRUwLlNgWt1J/y6Qf7o1DLC5/hoXc189dfELobJgt7xStteB90V8N
	 VyhGA94IxTA0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D45C77B60
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 09:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168267372580.23289.13284170615973591224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90b271778bb161b50cc0e6314bb46681a911cb628d2b588af055efc9836ef6f1
Date: Fri, 28 Apr 2023 09:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682673725
