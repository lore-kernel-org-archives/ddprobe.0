Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C363938EF
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 10:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645871185;
	h=To:Subject:From:Message-Id:Date;
	bh=HyeeLlom78tl5lkBjRKzrKRWLvhoFRiHbaDyMzMe3n4=;
	b=eDP3ZE8LHgs9Flo1zBtYd0hN07dEOKGMMSIc15bczDmaBTy0EjjHogxTlbISaxwE
	reaaa+496iTRUCHGGlQ0bBccXq2rC6vPd51Oxmp/VagiuH8FJh7rJrtIPFAJR+4D3Sg
	eyiCZyYe9gi0Rtl5yPv86/VfUzohC91FgKyFZiLg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645871185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HyeeLlom78tl5lkBjRKzrKRWLvhoFRiHbaDyMzMe3n4=;
	b=FfVe435NhSZBvUPwlLTksVITIzQnS/F3Rl5YwgDBn7Roh8jyBhrzy4xwC/1Qtz9L
	C3wIISXt8Hr9Ya88Y6W8fdL0ADowkbgTeTCuWyfEjIEH9nTLthEIaE+OdA+TDNGkco/
	bndUngHq6Sp8ervNtM1/QxBCZn+STTn6y6CCw+H4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f35913b6a-3150ab4d-cce7-4939-9510-d679cfc59d8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 277d7683ab00adb2e61844fd460c3d56a7623c1cf4713ef2386f5c86fc4220f7
Date: Sat, 26 Feb 2022 10:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645871184
