Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4501717CE
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 02:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF405C433D2
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 02:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684202466;
	bh=6HUxW45MQca46AnPnjxF6N4tMy8G4eE9JSPPItYY6WQ=;
	h=To:Subject:From:Date:From;
	b=uvWv97V8GImsLYE+ZHeDRxr+8au3guLZZMQiImka9NXFgIdXb26tPYb+bz8sDrjuU
	 2kREuxeSRlM8rGxi9KITmKKYRf7rIgI9sctoYojVpvScWnXFEuZ3dipnFs1lBwYe4D
	 TVX3LhqfSDyUL0yerDFfY1Mnoj98eYTzFXvSGuXpTq6NNKvO33xOJZc2BtqeUziQ3q
	 hPLcPw+nywOj9/UojXGPmDXhHMA8UL0fqE5BSkIuydItYIWVLv/vLMvoxmDG3/s0qc
	 IgMqD8ASB5NCUB8Z7NMOhqpcvsf6+3Jd4QlyFqg+Qp5+eTgqrP+3Ck515NiYtJ64O0
	 fZdSvNMtzb3YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBFF0C77B75
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 02:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168420246576.23718.12846329970126859933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6137f570d9752f389b80955cf02b90bab709a2b10b16f4b72bea31ead935e1a5
Date: Tue, 16 May 2023 02:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684202465
