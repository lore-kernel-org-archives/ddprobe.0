Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4235123CA
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 12:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648211818;
	h=To:Subject:From:Message-Id:Date;
	bh=qQvMatNFN8zeC20k6gDbK4OeV/ufZtd7JuDmDopjK8U=;
	b=MKxwPb4sFRgQpC62s7DleJfWn/cFmln1zOdHw6lSQ8iU8ZaJ/4zne64mIzsQ9S/K
	pOIERyrP3Q3G8/bj/LS+8c6RSaTF9uJqbgqkeENbFCaDVcaHWbYw9HjyUdAc81IVIbN
	9Fgx27baQ5OezUryLBSYKHHPtbdPfC0JxVKWdS/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648211818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qQvMatNFN8zeC20k6gDbK4OeV/ufZtd7JuDmDopjK8U=;
	b=OXglwqNrhloyyk3wt4FuoPnHslrCkXmr0AmkGlgzcBNXSoLV9TKeUqthXoqYmIp6
	Y+g/MoY1tybIm5FaRf+ofCqzvFgSAWYginpz/5ofvmeepj8KVs0Rjc7gX8YIh5k7IVO
	eOYIM56I8HD5UfstpPDGybrUjYbFgvKtpVkUYNRk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc1147728-6b66f51d-9de7-4795-82e5-e4dbaae9db7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4cd7aef87e6a75618f1e9c2472de127a76ec33eabd19986bcc8596732d59e9a
Date: Fri, 25 Mar 2022 12:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648211818
