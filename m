Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B5A1C02
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 09:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D121DC433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 09:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693906448;
	bh=fBrP9v3zk3lv5Z1B9zY9Y41R3u4jKkqsZei+KOJWXxk=;
	h=To:Subject:From:Date:From;
	b=gE+jIz49lImIfnCVq6acrRRn3zWhEqhDKEwIVoxnudLbxOmO8pOY9Efs4CnpLTSGx
	 CiRDtUUPBFEswpYK/iYlpQyrDw0C9cHMAhgmAn1JXvWFn+wco3PS7BuNPc/4wTJVgu
	 vT/QANcRaw9hAOqeTU1sypbcmdX1xBVQTKnqe2gQZTHY8CPXVaobE0On62qRcUAgO9
	 n9NSUcJVyR+uYpikriD56GPPFnSwnVD0WvSWtiQhbHlTcw98956y3tP+GwXC+QoQAR
	 kbXCSVI9YpZuVUJSaYWpo5KJ7XNh9uV5hAymZKePtuBfnpg/6FjbBwSYNPU6kDjM5z
	 vh3jH3ALsbo9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FF1C83F33
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 09:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169390644868.2602.1785966499940336018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c06ec0265a0ffd5a8b64937f8b7f3e97e5a93f2d7a94f98bd14a500d3daa18
Date: Tue, 05 Sep 2023 09:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693906448
