Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71700C2EF
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 15:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03D90C433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 15:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688226249;
	bh=6jscW8krcw6dhMdEAMYM9xHhQe8AUrFWso2I0dJJURo=;
	h=To:Subject:From:Date:From;
	b=C0xzgIIuVR96sxrqlxgrAeWqFZGyvRG2CKqaFed9Wm/JUEzGvNCVv9MRd2xhbSMh4
	 XjbW80J54noCOCUUcTDIyE4aWTRI7Q1vqiYaA3YoDCCvzD7e7MMsd5/tFgRbeH7I8w
	 ZRIbnNjYzGXEghRFdYe90HHHCYmSXy3fX+joFEy+Pg5po7r7bFOUhT+/gvWbN01w97
	 RBsW+r2UOZBq8n8NRH2EAr+x6U2BzsvwjwIceJsfXvUPfLki6tOZ5EqxC7bIWmvN0K
	 nkhkJZbgMeklgYqjtk15ACIcy3kJLixRdZUGChX8JCVWpQLGjzTh/4NoYsTxLjmSVE
	 A2AoXOMMWUUpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7D01EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 15:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168822624882.6400.5420479490202957919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78f023e20fc833ace035af9d89ddf2a96017458134ae48901b365ea0d2e0cace
Date: Sat, 01 Jul 2023 15:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688226248
