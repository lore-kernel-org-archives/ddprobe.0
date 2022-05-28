Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B95F23A0
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 04:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653710579;
	h=To:Subject:From:Message-Id:Date;
	bh=X/OagyFq/NO2DZPYvkT2mPbpihy+9gB2ZXwU9AYaShY=;
	b=CGob8UZdWWyrKltzlTVWTsuVChewXGQFtkZSt4XYo3xEAHk/DLWKQfgxdFK8YM+X
	SrDk/k3OTpvgjx9P+mwvhazlt7UChTXyGhi6MyLDF7XpTjAcbsKA8tQyftoASM0TTQZ
	Unv4JadlvdaSSr5RDRe3Frg6Kbkhjd+Ehjo+3Pfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653710579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X/OagyFq/NO2DZPYvkT2mPbpihy+9gB2ZXwU9AYaShY=;
	b=P34vwSQuBp+LfOrOqdA5XDEzvFL5J7Erf0AJ4Yt1HfC3geLVAsi+LFMqQ1QsVDyQ
	HWlFFoigrMyXhybR8Cwbaewrm+3Y6OJAUizTPsSQxbnv09C00Pwizka88BQrhbugv96
	o9U2pc3YEdAWDkjv7gm4TirHKkEzMTDwZ4suvn9c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018108d4e6b0-b9e29f7b-438c-4111-8e54-5149be537252-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1349ed0d11f543e680b41446401478aaa91171083c004f8c17e6f5792e5d447
Date: Sat, 28 May 2022 04:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653710579
