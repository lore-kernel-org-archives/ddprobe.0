Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0687323A5
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 04:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652934239;
	h=To:Subject:From:Message-Id:Date;
	bh=dtJSniy8/q3QXiWC8Ot3QVjpVqYpX7zpbok0eR2cUt4=;
	b=Sjm4mC8qAQ4bBbqT1G2GUdzKFgKuZlNZHeKr7ErTgUouSiVA0bW4CBLnMoqGTsQo
	AbI2jHgzVZ4Ifa0j4BeDEy+gbkPl8Q60S8QC4/076hgEm1rbcoN3ix7fRt/JHHw/3v8
	3Nq28kjGQKINvoVGa5J2pJbPFBB0Vs+UfwK3cKDo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652934239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dtJSniy8/q3QXiWC8Ot3QVjpVqYpX7zpbok0eR2cUt4=;
	b=gBUzDSL6USOtik8tT7QggRuH9kjLMuYx1KO0yX+L+g+MYI/erw+hDcYaGlO6AkK1
	jFqExd005BaY4BQODq6sANrtdwCHH3pXaKGsBtdqF7DyBMmVp+wfTbPYoUA+WSJpRcJ
	2xpAuD/RMicEz7MISJ042BNUTMWlZPZmQTh+BuNE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180da8ee43f-4c7f713e-fb25-4524-8919-899c5144458a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20a6430e15c7e84443e719a481d3805d2a16ca9394b74cb798fd09f783504e28
Date: Thu, 19 May 2022 04:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652934239
