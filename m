Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E063B15B9
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 07:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652254799;
	h=To:Subject:From:Message-Id:Date;
	bh=9P2rgE1n/FARU0Bocb23iImzzhkZTdJ8aHAjjcBBZ6g=;
	b=ax8y1n93wbk9aR/Db4j4cgpd5PPlyAVTacP9gEStPWL92qQ2cUe4TnW4Db44w8BX
	651mugVaEP0irIxgtmIKNfMXm9hmZbDf12W5u8/J3gNy3FrD7TtYMZfEOpzv5yvsPgX
	cuXnggH1IYlWE6MYMPPNhZIhebkxxDvL5YMyykkk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652254799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9P2rgE1n/FARU0Bocb23iImzzhkZTdJ8aHAjjcBBZ6g=;
	b=fMcL2bJxbd4YdiPq3xuVEcgT6RivvutUUKgyiH6C2gG9i8rXyW7LP8n1kOVqwMv4
	cf8mMi/yC0LI5I59S0JxTPoN5P+jldSKPL8Yiapu9DFwQ3FhZpf6BfwDjb/xmMihIQo
	au4swMsEUApXu1NIZie0rmW9kRZyKRXUTCs95BJg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b20f75b3-91eb687e-8767-4b36-ae60-2b643d08a65e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 660a60b4f60b5cf858294e95a1ca27ab4e2b9026c0711df735030a7b0143ef16
Date: Wed, 11 May 2022 07:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652254799
