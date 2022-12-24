Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D823320F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C9D9C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671901287;
	bh=sVOhyU5b91RvS04mY4g11NPSzsYa/HQjasXTRmChIpk=;
	h=To:Subject:From:Date:From;
	b=PkDZpjcLvwQ9mEqoRq4B1M2+B2Zx8v+oWs8k9YBc9eb7ViKLHgfhtsgz88f6/mqfT
	 vUPKhlcmjT4tcGtIuW8vidvmTwezf4M73mxeiVjiSDCDcT3T2T+R6U+cwDAvDM1ULb
	 SdvWg4CsZXBl4Lm4TwumKPVUx/qarNjpOqzWfl9CUzEZpJfcUQ5lflVQZTKpONVnGQ
	 NdOkbrANN2xsKM0K+bc0X433VzGrMMMGQXUmhDM47BjB5g3qDcOjcyEYzw9MK/jg2q
	 q6xWumCk44OGImA0JWiYI2WHfMIGKvKR7+rGF3ScmMyIDXwPdGa6x9M9l3MbHHvz3f
	 UUxIfdFfG9ibw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E9DC10F1B
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167190128738.3519.7779286645450945073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d728631504193917bf3fcd29afa05f5edb1758f16328d7bf5b676d150ae6dba
Date: Sat, 24 Dec 2022 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671901287
