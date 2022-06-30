Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0446D7E9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 02:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656555414;
	h=To:Subject:From:Message-Id:Date;
	bh=LIN5Yyz6I0eOvpDfG8tz/Na6d77rX3V2hHvhfQUv22w=;
	b=GSJCds2u2z033XYMmPU0Ig1kDaMNSzS/ZmIV6TlYsrDYGUgM+NtYi/ODSxZtOumA
	T055huR7CXEi0MvSGvyRRlNd1zCzi9dV9hhmQKJnO3xBcxysqW6dx3QNz42PbGwG0QY
	Wn0mxyAd+K3lEXbrbqhUBWLS7H2/xmgnfzasdA4g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656555414;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LIN5Yyz6I0eOvpDfG8tz/Na6d77rX3V2hHvhfQUv22w=;
	b=HxCEFnU9RVcAUno9K08mcffPKrpDArAQBy1KddLIBNwmZV9UsCEZD08FxHBNPLb0
	4mR9Dd45kNPG0L8CQrKeX3Vq7DOIFKtiHn6Pwxlr8FY1Cm2YvPezHnjuS3n75fbaBMI
	ln/xvgbzNaVjTsK/ruHkxLOYssYcvqFJcK1m0o0o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b2659b89-31ffba79-2622-43e0-92bf-7294bbbe420d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f12bc4c6d606d4cef8c514a5d94737eb974d45e85f02f0398b829359aa9e5253
Date: Thu, 30 Jun 2022 02:16:54 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656555412
