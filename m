Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC88DA81
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 18:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3C12C433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 18:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678472706;
	bh=4QlixI/thMN1eiuAD6SYoNOxkCjm30p/6vNgRWfbQFk=;
	h=To:Subject:From:Date:From;
	b=IfwdTzS0ZvRgy7a/9MAdlCWFqAWknm37/cyDAPoc47JzpNldWLHKImzP5SCs+tyZo
	 bJw5+CXK9PAJAXpX1njjpkWynp96B1jYUAJHnsJAK49g32SU1K0w4SkXMBIkW/n+T6
	 c68SHQieOFTitMfNdf4UheDxzmHOplLVsjh6z/kxU0nOiqvt4O0D33GoxC2j8+bWcT
	 7PxulDLXvOlu9xBCvBk+UfRX2jNfraSPbL2Wu1FPPlxw+tV4vRr73/yimzmK7TQCeP
	 pbuRcbKKxlp23+aPgECyAlAwp3QtvzvRt7xGQ9CIK5E1ZqoWk3rfag06dd3BAG6+pk
	 CBfy5HfHJ7G7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5485C64EC4
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 18:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167847270586.6345.8458156652929880319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce77382a2bc7fdf3d2a8d7afe39627aa4f28b8df8bc8cea2155622f6ce2dee79
Date: Fri, 10 Mar 2023 18:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678472705
