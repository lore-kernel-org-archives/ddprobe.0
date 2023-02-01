Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B688483
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 18:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5BCC433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 18:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675275365;
	bh=I5MqQ0WM4ZPj0EmVKqQgWE8UWljsssFIkt4LVzWyjhM=;
	h=To:Subject:From:Date:From;
	b=tIclz4mk4Z1iWuz47fT2Dc3qIJGsEOpfFlDXWQb+dVeb4s0WNO0RKRQL58fUoFYSj
	 frR6Ek05OdxnNb2ZN975bGPTAv/x02wGHENDKgnVWbLh2L6cavOkRFY8r57uIx9KG/
	 idkxSSMBzScA2wANIHeKOWdFN4DuFeCv9I/kDfC2jwRUBRSyfWkWCfKBR268yK3NuW
	 uKTdIhnFFtlOpCMeu1QDgOsAm/MCPg6copgrdOIp2wwiJD3eBUKFwA3X6lMHJSaYEe
	 jnP4qr1Q8eR2MlunlfFQUI4qvcBdynCmtjrSGTbBw8aM1Etp2QJ1bfmsAhoSeZk326
	 CQgMgpQp6qoTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC81AC05027
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 18:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167527536576.2005.16842914208802051093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c296fd309bb87ea39a986605d2de4cd538817066c4f39b8740a87c6ee0eaa6d
Date: Wed, 01 Feb 2023 18:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675275365
