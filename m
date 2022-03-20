Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE475EB9
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 23:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647819084;
	h=To:Subject:From:Message-Id:Date;
	bh=4kZjNjRAb2rBmGZGAd3ycfiJwVYRLma3CFmsJRmp72E=;
	b=AHWceiM8YMEsAPS5qw1+kiEXFnesvnT9ZN5e3VYmntGlV64zXS3ypDteK5Zo+u6E
	yhsvFnSxDsDUhf/LP5FKyExZh2f8L8uIZ2mDAEZfCHxlAxMoGimnhE8TndaxZEVWICn
	Axrst0RFpH6sMynP9Z0BjI31tGBksj5OfIuGF9As=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647819084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4kZjNjRAb2rBmGZGAd3ycfiJwVYRLma3CFmsJRmp72E=;
	b=IAUynSA/pgVkUoRYz53VJg2lRcsmznfdmKNGRa+BYS4ap1Fh8IeyXE/YAj/Kplpk
	8jn3ol3272w5JGCUUvZX2fLa4nx/hKT4B9iQHrU5TToRxytjZznNoPiAYiADfiFVHcI
	5v9fJqsbikPDJC/bblpqdqbIZTDMVulrCQdvEFbQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa9abd3e5-cc1cd431-85e3-4e5e-8e5f-0d91cd92c5aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6350abfdbc12b5211940829d931022d37182004ceda475b5065aaad06ec19f0
Date: Sun, 20 Mar 2022 23:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647819084
