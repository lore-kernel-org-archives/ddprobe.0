Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECF882F3A
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 13:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654002479;
	h=To:Subject:From:Message-Id:Date;
	bh=8HnUgRIAI8JT1WVC8wh1bQqt9LSLfaYsIkEJhHE4W6k=;
	b=bGkYHRk5c4W1I+BJ9ZxfVtJerO8V4b8t813wG8PFYMlum+NLv3BP6ubm/TGd8hjO
	lS0llOQHY9U48/ilViuYPc09OX7reFqJxh8gdCHrvaMI80n86LrAr7N51Rb2qMBUFFM
	xcEVCA5MzvN8nudok3HojkuDWqj75TWEhLPziox8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654002479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8HnUgRIAI8JT1WVC8wh1bQqt9LSLfaYsIkEJhHE4W6k=;
	b=Z6qhql5ErEaOUXLT8OxY/VvFQpkJ7Rs6dUiswSDB6zxd7D3NfV37qEDg+YxWr3I0
	tjxfL1Trwj6ImE2VdgRJg2ljh2IpXqrJDFTcbcjKYRCZ+3UJPCmBlDvPNVBrNAcquFt
	FGv/nfqgz1eBS2Nd3E6gi+p1fHLXaOzdinCfSE2o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811a3af09a-76811667-21d0-475f-8802-ba50e01418d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c8ce043b420d420e5c8b5b2e7fccb9aad8e316d067889a5ec5c9d36d89276a8
Date: Tue, 31 May 2022 13:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654002479
