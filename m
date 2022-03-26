Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 986F13D61
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 19:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648322458;
	h=To:Subject:From:Message-Id:Date;
	bh=eSxT3ev5onjPWbFXiM+QAukBYHxe0qGfpPaISlm8F6g=;
	b=ScqAOoGZtmt+wNl+XiA0SHp8b3FFOsNIpoazoRpq7eyLx8SQHTMIDXtihbJWAlx9
	aw5tjW9k/QHAzR+owTMxnrSEuy+IoC5zu268Uj7oshCPjarDbUtQlkNocmtoCtHME7P
	FVlQZd/9qt1J7cNG5tI3nqsWSp7mtgRX+k7E5Xxc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648322458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eSxT3ev5onjPWbFXiM+QAukBYHxe0qGfpPaISlm8F6g=;
	b=g9H0SD2/KUzfb6FEETsM+N5kRELq0s+B4j5ESJjdq9qBEgqhPWbgoClDdeerKm+e
	LgHwEG1l4JD6P+72BQ001uSGCeVDQLHtPuT+M7nZnl/YbclT9pJlZBQLoYe0cW+SC0o
	JJMYP9+jagoEJ/gLU48ie28di6L37sRBvq6tR4Q4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc7acb2af-3d522e19-fe00-4b85-8695-bd179ccba5d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 526d3dd44f9afa48a4cec42c2b5da24b76a1983e989962e385e5fbfea7c102d6
Date: Sat, 26 Mar 2022 19:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648322458
