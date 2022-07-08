Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314823D89
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 21:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657315012;
	h=To:Subject:From:Message-Id:Date;
	bh=/EGiIw5iv9YysFNYkyyNSUmbc1PIZBgVvCM9wDrjzxQ=;
	b=TYjPIlnRDXBqRo5S8QKljfW+3WSlt80lSROfGBoZ1f7mODflXOe78MoqrLyomv5r
	fHoHn36zXezLItXyQllAc64NCzf4oZwQj/2+kGSP5Ya+9EnKBvsKaopvDDRDlwI4XVA
	akGqV9G2ktajWlm/pWkXGue6ObeiyMZxbbO4hjGk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657315012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/EGiIw5iv9YysFNYkyyNSUmbc1PIZBgVvCM9wDrjzxQ=;
	b=FeknXDLAGzl2EExnnOqsplVBzAjfF071bBd0yT7hyZWiNb3IijJaS7cXzkMUmRWI
	0iGJw+EOpmJqgrSlssHvhB64RfMdW3tz8ij/7VEJ+Bx42hG8CE01Zvto+Df6R7wzEOr
	nStRwmHFCdP1VflDe/d7TQ0UuO+QNdRN3MO//5QE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dfac2ebf-a75d4d99-fa71-47a8-8873-9ba7cfe9cb0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 429fb65a95360420b9b0ce53006d8a65bca75dab678186c6be8c2fbca9f60b8f
Date: Fri, 8 Jul 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657315012
