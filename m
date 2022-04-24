Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C99160
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 06:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650782398;
	h=To:Subject:From:Message-Id:Date;
	bh=Y4IxGWkqNL83LmmmDAOxsvXFG2d3cj+Ry+EcgAzPWZ8=;
	b=WLoMa72Hk7rV8xImyy3W/DluHQ7X020BXrL5mdurxrFBmxsSPqHl2bSU7rHZRwoD
	QF+tkWDEF2Axgq2tTSB+dSVKPVchYUvCUSrRxF7r7hbAC+f+NYMLFY8Zg8cFj1GfzOF
	cJbB8SCGf9Ty9ZcYt4T1X8D5mABKE/0nyi7Zqyts=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650782398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y4IxGWkqNL83LmmmDAOxsvXFG2d3cj+Ry+EcgAzPWZ8=;
	b=h6yiDBB8YJboVZwCu1at7eCs6ywc308NWaF0kWc6sCkK4NyQUyk50/rp1LPs+XfZ
	xd80kP73v4SeJOzZ03LfklZ5cswTJgLRBJzc9EeC8zJauvtaY1TK/EuaC2oqeQUOKG5
	KHxvFryG/Re62sGkDuK7E+9XTEj022r87IKXlP+8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805a4c6798-39edd3f4-7018-44b3-bc69-17b05ab00df1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8106ffc1e16a34ff18703e7949be7bfe0ff7e91cd6f16961a0db9bc63020c817
Date: Sun, 24 Apr 2022 06:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650782398
