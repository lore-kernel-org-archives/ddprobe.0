Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 837967A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659054052;
	h=To:Subject:From:Message-Id:Date;
	bh=Na/0st3GEc5BK61kbfCypnx/2f1q3SUGPw4wnb9G1Wc=;
	b=HEAGqSfXQVMMzrntUse92Ymn/xDAs9G+nS3e+u+faXrQLosr/mwFO1i7qe0ep1qv
	UFoGbfAy02xaUgnbqLP2QgkPj06vvW3JXLwCOjCQrBDxz1OmFkS4DY+TxfTbGPR5uai
	LW8n+5oAzb5Yi0CrAlVMvtFBHwPAppfFf22ni3BY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659054052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Na/0st3GEc5BK61kbfCypnx/2f1q3SUGPw4wnb9G1Wc=;
	b=WxqknWrHqjutHUordaC+sluK3cJgOh+RyECNDqyBlEakyF7MOTLw5XuEyc9lqZMp
	7fipXiBpnGC5HuVRcaRHDTVKzukF8xnKVMWd5kyS4iCNPAJ5WTK/7/0hLLlRY/CFwmk
	/a4eLP0vhZ5aa9MTKMqyQc7dQ4POBtQwbnhXl+Y4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824753d4a8-d1105016-4ac3-4b22-bbd2-ce13b745ea25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee33e95f866bf08f0ffe69493e7dfb0c3bf7b6a096628750e46b8c0457236387
Date: Fri, 29 Jul 2022 00:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659054052
