Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A40EF7A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647372085;
	h=To:Subject:From:Message-Id:Date;
	bh=XkKOx1Kje51u/8r9wgf2tOfUGnN8lZVHLTM2HaDGEGg=;
	b=StqzYq9ba3PudVCQpGaRD7FyVRbX1/xkIzwEp/byBQWIbhp4nLFHfJMVoyF+e1Sb
	IlAO7WFR7kbLsJu75vC5gKGUTZD/n5ODhBO3yUlVc36HdLFG6YuQuAtuYMErFUGwusU
	sGSEAs2cN6i10rHmx+ujX0l9z38BAZU2vdoJurDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647372085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XkKOx1Kje51u/8r9wgf2tOfUGnN8lZVHLTM2HaDGEGg=;
	b=b9GyNiSiR7CrmjhlbyPASdVQ93/eu39Ko7CfWD0M54SbHIsDWIJ27PZfw2nFB116
	oke0WWhTJzqMnMo1D5c7OXh7kT2/4ZPtW7FFqeg3T8qQ8SLZ0WPgQg7JUP7JcW6UOgq
	CKy2S0+x1rV8RxZLO6jewWhYrfGYvshJ5K0FdI8g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8f07260e-7407b061-e6dd-4785-93b5-e958090303ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f02cbb8f1b644b711a3ec4704c5d8cf297ac75c0e9c2f2d57f20ddebfb0ea1e7
Date: Tue, 15 Mar 2022 19:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647372084
