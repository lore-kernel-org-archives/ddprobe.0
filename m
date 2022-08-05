Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A96310E0
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659708652;
	h=To:Subject:From:Message-Id:Date;
	bh=p8uhcWb+zHax0FuYXBOORGA6oX9BBjS5w0HNHq4XzU8=;
	b=LvNeYsFjRj31kXtjr4fzepiN6ABN11N/0+PKQ1o33FrmrganQ0FSFHCS6zg1Z99x
	4W9JcqWV7AIZvKdpMFZqdEdVA6d64v1d8pEnURo7cEtPZd0VuI87NcQNsZc/Dxx7MY5
	TvOtARtNh/pTMm/3+Pp+nMRgUTcFf6+CN/JmDWDE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659708652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p8uhcWb+zHax0FuYXBOORGA6oX9BBjS5w0HNHq4XzU8=;
	b=ATvaDiPNEbg2z8eMShq0cuBgqIg1LTTatjA0HQzhN1y+pvWv/1GuqQMnbEiVbz1g
	fzO7+hTk7jTkfV68c6rS+ihIwc02Hj9awuppWqpkP4TOT6BqMqntnP54DjmLqbF7Dpq
	vOXBQp6Z6KINGuezv0K/rOHxPlXYbYy4LJEhottc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826e583c3b-31b89003-18f1-4236-aa88-0dff47dab8d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c58b946aa77dc4efdffe5b4f3b2706b90353690dc71245991221fa2978b04852
Date: Fri, 5 Aug 2022 14:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659708652
