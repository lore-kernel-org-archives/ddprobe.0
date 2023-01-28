Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3061615AE
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 01:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B9DC433D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 01:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674869585;
	bh=TGdr9+cjnu78tEwN8vY52ZpuEJWxp+60J8KBkggNmjk=;
	h=To:Subject:From:Date:From;
	b=TeLTSBcQup15jyxUzcigpwD/LIg9cp2Q7iWmKkflNujGXqCBsIRZ6xkoj11Ty4NDJ
	 bt8na3z+CAGkCV2AB3Lz3yuBGbTfZDaM4VxKRZxjLlWXC/zks1BvDYqOUBlq1X/Hi2
	 T496RhV/sZpJRmUmTbop9FQSudeuxv4fvGYz7Xg7jwwQmvxgyiXqle3Q4/RL23/QIn
	 f35/HNm5mxyJAs2K/HksmddAn62h342k0JWU5X0T4743j4fNq5YfB8mkpgSnJXC6vA
	 yV0IJCsiUK2pq1Fg0BzT7mdfFaM00VefmowJGFMKhSaZ5w0v+6duBfUh/JkENhxM7e
	 PAK8VFRKkYOig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83B7C54EAA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 01:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167486958574.2683.15968394536075593618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 616b02af8de2b47be563ef2eb062881c58c8727ee0db5646f771af4de1f015ee
Date: Sat, 28 Jan 2023 01:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674869585
