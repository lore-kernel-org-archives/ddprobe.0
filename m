Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFACA7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 09:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655543219;
	h=To:Subject:From:Message-Id:Date;
	bh=GEDKkFqSdFFhAAv9vj//RUGBtkabsYSuPQ7U86RSCng=;
	b=YzCC2HdLSJ3T/oybd/V605/nJlak31kN4ae7IuxGtUvyaK1xBOGFFHRri66BWl6z
	qFxLKtX8iU0vA8HWBBFHOqfWOjDBLrUTR7EfU2ni9myyZpHd15wOI++l+RzroYQ84AU
	MRa5o4L7BMUOm6mx4weHbKSjlzj16QqwjY+jkLos=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655543219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GEDKkFqSdFFhAAv9vj//RUGBtkabsYSuPQ7U86RSCng=;
	b=aR8nGnjjvpfUNLkGLFjiaU+yrp7/V9is/4JAVDYei7A1OhMiRcTjHNFoJjoPwHlS
	9LCx/fYPqbm2pJuc+SKt2eru65QDWGr4Pa+ZBbE8MleVzFmpdD/0SSALyC00aarzg/d
	NKbEciZa3qSuyiABlEHh0bISONEmHh1lRQT3IpYs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817610c444-45f35813-27e9-4cfb-b9ad-5639699dfb72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37bcf5116515608dacfe37c08fcaed95e5f7d09d9105ae7194ada63c601301bd
Date: Sat, 18 Jun 2022 09:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655543219
