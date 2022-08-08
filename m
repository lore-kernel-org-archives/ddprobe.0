Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564D03D88
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659976852;
	h=To:Subject:From:Message-Id:Date;
	bh=fjEOcxUt2aVzVILMRWZOEueo1eYQy4yqnrd03UOoLdQ=;
	b=kl+RwIBYM6KgXCbsopnAJi4REoBu3VipJ5xHjJ5jFI39LBLcBEiZjzzypP4cSDIK
	6eqxjUD1u5iKh5t4J8ny6Y/2/S3RzCMyJkWLuovqLFJCuxBxN2ufjHAZCTpI5EimJJf
	xuN2fcrKEg5zuey7+JikHDpORcYF4lRGr8+ukBQw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659976852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fjEOcxUt2aVzVILMRWZOEueo1eYQy4yqnrd03UOoLdQ=;
	b=eQcf0pAKeT09AGdCU4MqcU1U8uRZWwzxdrJ1m8/3aPEPtLj4MufTpBnbEeYwDShW
	bGrk3AWhumIhUUudmE0jV0E9Dei9xHdenxajc1TlwkB9AOFUW+aBqbF8aYMedjzbXmN
	fxI2T/SgNTj2oGA1Rd79bP+Xiw6Ik446YOzzz29s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827e54a47c-18ea5936-3ed6-4d9f-b3ad-fc16f81ed17c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8223fc246543f14a62d0f585b018e27acff60b4cd459fbd6c72bbc8a84cab3fb
Date: Mon, 8 Aug 2022 16:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659976852
