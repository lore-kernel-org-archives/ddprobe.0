Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E62E27E
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 13:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650030058;
	h=To:Subject:From:Message-Id:Date;
	bh=lSUKbUUPzKiG3QQAEoMfOL4gCOqzVYFNImCjR3EuQDk=;
	b=TXjeXkB4humJMXYCGjbKphS+pRE2r3VU/0hnVyUTJqYTDS2DXgCPKTyUCCiKHAat
	jWTERrWK2KyDL9FkCUQ+uSz3P9A71sA9WCNiHWsDIw+Owg3vrwUxMfKv1Iy2qvju20q
	H4wmANQ96O/32yqyoBgz52zcIWnwkZ11pOvPMB+o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650030058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lSUKbUUPzKiG3QQAEoMfOL4gCOqzVYFNImCjR3EuQDk=;
	b=S+XKdQDmlwWUa2u9EpawK9q45ia5UkUgFyLWCnId2PkfPnIU0xuo87fifoZHrbXf
	MkXl3GwjCFk87pwvkWVmY3cgvaAVVEtszUpNFEFb106X0K9FjrgJaIa2h6SFhBbCoqQ
	OLTy2aw9MKuR9oFzZg8wZAV0yQ9yPJ1Z0NbhJ5os=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802d749b10-c38937f6-322e-4873-9fb9-21a0df5a9a37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a35d45aa2969370fa34a67b2405265a79a06277209542f5bbd58437b2b896292
Date: Fri, 15 Apr 2022 13:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650030058
