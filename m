Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C5FEC5
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 07:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649577538;
	h=To:Subject:From:Message-Id:Date;
	bh=GaSJKUGd1HG4VrQyKRGc8eOJ2oASFR+DOBFbb5cnTak=;
	b=WzgDKAuXN9HftodJd8DP8du8Sed8jLmtPGyjNLSRqYNpnpBNmd8mf3W+QKtg/rHP
	UPMBd9oB9aH98tRxomtLCNmpv8B213yiaYIqKTkpeBaRz3bpDTqnKqyp3Xe5cQt1w87
	Anr1wjq8uIgwPxf0xP23UhAHv1qJTX2u3rDqEpJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649577538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GaSJKUGd1HG4VrQyKRGc8eOJ2oASFR+DOBFbb5cnTak=;
	b=iSJIqgF6d5hj1A6kKTYv6hZoFjdeEmCrBY420QQE+6yoEpj+d8bymyGww6oWJVvx
	ihfHZ31mSyAmB9P5Q7GEqEX/T4Y2NWwMnj/6daPhHf2fiOAcNpsBFSVCOjP42ufC9TZ
	EHsgOwK1K5fjIBaH+/FbmVQKatoRA7t3WxzJs0Q4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180127bb2cf-dfb9e55e-4ad8-4171-87d9-64bf5b7d9fd3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b64373d77b944aafb749f07fb61302a9b5ea3ad1cd15d0836997f20e615e3d6e
Date: Sun, 10 Apr 2022 07:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649577538
