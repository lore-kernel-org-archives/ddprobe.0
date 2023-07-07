Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFCE6BE7E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 11:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C846AC433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 11:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688729228;
	bh=tL6NrcIS3rRxoLqSAP4ICVjG4L5R8HNpRlu88QIFwOI=;
	h=To:Subject:From:Date:From;
	b=u9yLuZiaChwq0wqCp04W4Fy2YzgjSXToUtPIInUUmjgbSZCwzpbgbFsb0sSSVnrxl
	 zoi5KU/mreLGeOdyrPYaEx61T7RLNSTpRH+vPMV2mI/pgJ1neoX/vmZIa8CI5SvjbV
	 Nqv73WPip6JL/zbR4tVx8SLqR/WzPWF9BxnQgPu1iiSjUfQlM6+yCRLEw7PCQKYdZ1
	 WMe8D1ZOn+/n6iur79jT5TQMc6juH+ABLZ6HLb+z4q2mOGnjdmF4Fp9dPEOiRHzZv0
	 OrFqtnIlNeIHNts8eqT+/v8b+rcqACYEDwdxBpFa3j0XIX8pksFQ1TpAzJMzvZzMql
	 2EQYyeH7kkiXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD04EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 11:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168872922870.8460.16781464442637745194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89b05f243891ec0ccb201db7158ef7d3d38725506ff68b2cd38f697cb8c6ee81
Date: Fri, 07 Jul 2023 11:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688729228
