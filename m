Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024B463E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 20:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651005118;
	h=To:Subject:From:Message-Id:Date;
	bh=GmXVoWQvN1rRl2uX8N3/hngRLip55d8OXNgeBzxoar0=;
	b=dE6pPqhM5BcCKbOCFflEozu/dzvLgvznKgT6Z28mKUCsypzohVxjIFM3ip8xDXU3
	waapOM3YLkdfzIJ1dCCVaqRGFxo3DOGNmR04PP4peFEaBPZFgCDxTGkboIvUfsxvyZ8
	cvMwOPQnd7XaAtUI6wDomVI1Jeb1uBLsEBreH878=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651005118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GmXVoWQvN1rRl2uX8N3/hngRLip55d8OXNgeBzxoar0=;
	b=PGtH68o/Q8UEBfZ/gLW+7FL3CAbzuWZTjPZ8VWX6wsvXej0hLxsLpzXEOU4uoj6u
	tFhrrTvDZKzv0UtezcSAILJqY9Bs5XlG9BjcgLeBNGJlpC1/Q+CBQS4tw0gHC6fXCW6
	hPh3Jg6fYHkXZYv6irJxxo4bdkm+5altybBXD/Lg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806792d729-c882e32c-35b8-40a3-a476-a4f5e4173eb9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e342a2db6b5f8c1c6dd5a924b1a02c368e9534ed9a2fd1db9deb71098c20bc7f
Date: Tue, 26 Apr 2022 20:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651005118
