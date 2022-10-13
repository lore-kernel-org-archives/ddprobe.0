Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C854133C5
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E1FC433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665674453;
	bh=w5P9MSHb/8QDTFWIrvK1tUeTrHecyBiJuC2iJ+Coj70=;
	h=To:Subject:From:Date:From;
	b=kXfQAm+/vf/mXMoc1ouCv8sE+9X4NbLYcl7k0RBPW4DslQjxusr5UTyO5G0ZGwS+G
	 g4yBb+e8aoyTR/fnqsXVN/BArKI0lPPaaUV4YhAg7C+yUuqdUpc12eDIq8rL7gxoGK
	 XjQq+sM9e0NKisE2lOjzRltJ6PRe/5DwEJiynrMaYNX+cQ6EX65pkZJbTzckfQT6Xv
	 6cguOV//QJkxZp4SA0oXUHJpgJcXBDbpa62Jar7IKsSoQp3cq5PwuGTFQcuXTzXi0N
	 934Zyt9UuuELwoUZ1bZCwaPL9St4pULoViEh1mWPidDuSGdijYHBiRhYWhCzgHI6Ah
	 M+KP4S5QMG5Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B6D6C433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166567445336.12139.8439481299760423308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f05a140d897c649bdae982bb0a3ee493ac58756faa854b0970ea11030784c285
Date: Thu, 13 Oct 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665674453
