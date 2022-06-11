Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C707A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 07:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654933139;
	h=To:Subject:From:Message-Id:Date;
	bh=lDW/1991ieAIjnu3NymdZ72rMWvgf8OYV0FK5t1Sgxk=;
	b=PvtldwOY5RLcF8vCCEqRSkb47E1qdcT4RrsC4/TNuRt3N7ZBXNuUfTefzM99gsue
	e/9e0GMl1dVNua1imyQgz09ZNCY03NGyqcmf7IxDHgYulNl+Zp896C+wiCMqlEETZ4W
	iP4c+CthQgh7G+hcQCYEBKHricr1JKQk2rCyjMZc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654933139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lDW/1991ieAIjnu3NymdZ72rMWvgf8OYV0FK5t1Sgxk=;
	b=d0tiUe57jV9ztKi+M6sPvsPwwM1RGz3giB43xzMdbI0JtkyahHG62/Lev/Zp5GRb
	dblYbV7tzux5xatQrpkbBKNA/pzouCe04fHqz/LcuqtbG5FqaIhskIAD7DJ7XFtFzt1
	s7YbeuVpSxNkcBXZ+1HIrCZ5Tr6FU7jFEyp5N7iA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018151b3af60-42ebaf63-bba7-40d5-9d0a-153f8147b4e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0540a1f06d1943507f2315a7ec6ba11748a935b8095107574501d9ec08e99af3
Date: Sat, 11 Jun 2022 07:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654933139
