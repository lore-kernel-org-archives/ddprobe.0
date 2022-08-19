Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7151417EE
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660903252;
	h=To:Subject:From:Message-Id:Date;
	bh=/cr3WPKFJbGlGpVX7XBsi1f6uwkMgVSseJkGicRuCS8=;
	b=fdMw1lBJ+ZGkEERTrFBFLljfL/IGGsrXVbNpTdAru5ptPEjys722E+Q7dwHXmT+f
	Waka4z0OrNdaTLcj4uZHtzhkn1iQi8k4Qx0yXepE8xvm3r9cidRsJw1yOhyL/3YPPyU
	PRUcDw0/L+XvNq/5nNcBYc/CO5eSJKNedxy28THY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660903252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/cr3WPKFJbGlGpVX7XBsi1f6uwkMgVSseJkGicRuCS8=;
	b=AnFjuBnjy1j/RZfovDzqMnEYJYqtPwoBiKJcByHCkEZZO0TjgTCFQf11oMZxoJP2
	r2RgN6hzPam1ccwcOLJzZtOG760yuVcU9iM/SUmUlZyzYFaR6dWl1o5Ce8JD2Jr612N
	gRiq+n2OM0Qxk6xmSioeKuTjiIaQXFgvTQli8sQk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b58c6288-80007fe5-e7ec-446d-a8e6-9a586ec98d16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f44c29e7df5b15bbe788458871a83f41de3794621c1cfbae0f6bb8ae99a8b3a
Date: Fri, 19 Aug 2022 10:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660903252
