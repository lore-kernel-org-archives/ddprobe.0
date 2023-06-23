Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F51138D
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 05:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AE0C433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 05:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687496588;
	bh=iiiWFHA2+0eJrhpogmMJqGP6gVLFgKI4NE7KeWNplOE=;
	h=To:Subject:From:Date:From;
	b=BDUeyfjrzY3oQnGF7nqTEK76XhKZe2hp8HLoWsKGPw81Re6QhvSkbwK3JR/KM/5rY
	 yv8TKw8DqBU9TLt8ZrhEUtPjWSOKOYC0EVdEmqYGoPDibi5k/vbFoQu9zBX9Wka+BT
	 rY4yEhMbpy/4xjgdOk/roWyhPpYmlC/Pcw7AGVu2oCbrwWlWT6xBrVOAzO8PUgs9JG
	 GX06O+j0XElKVP15+xFQLL8BgugnrlvJc1ESLV6EPHWsr7vWd2SS5Z9v87eiUslOu2
	 VF4krkUd68ko2R9G7lolMlwSNWTBZBHY5RGqNTZ4h9nwJXQxhLMX1MSf0RaJWs+jjz
	 2ZMfbol6A8Biw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A8EEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 05:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168749658867.32020.13593673787284507241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72bdb9ef1c844b106634076bb2498e3914c9b24f7b4f1339ec511240fa524f90
Date: Fri, 23 Jun 2023 05:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687496588
