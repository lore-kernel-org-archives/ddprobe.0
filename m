Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668905CBE
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660126852;
	h=To:Subject:From:Message-Id:Date;
	bh=BnmOrM7Y9SULiuvF0hceAW/BZTafMGFqyUf/X/s/Uo8=;
	b=I4fPAgUAK9wwxQ6TIiAb4Exp99b/Ct8BJD5EJ28qmrAzHKXZ/Yq1Ks/OTR7mCaPU
	HtIK+dnLSsfOAa5a9934aPvKMYExr4mJZRid5Iy3xkmw/UCbE+q8zeLlTaZE1NY80dP
	7RLUHOlXNhoGptvimxhk3Db6UF6GwOg4O98FXbpE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660126852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BnmOrM7Y9SULiuvF0hceAW/BZTafMGFqyUf/X/s/Uo8=;
	b=TxImNegeLWsNakgLQvwLeWuhmdyECpnWuib8RXlU2/8gfmcMiC3RZn7Q5v1Lu8nZ
	LA/5r5qaY9gBfzOt0dgizb5n8idKEtRdYS4kExVnmWJyaM54i/EPuEf8fBq/ndnC5WE
	tiODrYCpN5w8ESD73MmSyx5VKegQOXAgbyoWHLDI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182874575f9-fb278d2e-1239-4cce-8492-e04ce9cfe260-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39f9b7f3352ad295fccb3ef96bc0f6808b2a0a9fdc8fde56bda206105003d325
Date: Wed, 10 Aug 2022 10:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660126852
