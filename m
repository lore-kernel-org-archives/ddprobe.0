Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D50EA8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 09:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654249079;
	h=To:Subject:From:Message-Id:Date;
	bh=vjppQn8fdL4eI6h8iSpf2hw0qETGEHnvj0rx5rwK3vU=;
	b=J1ICWC/Ooh3DHWQG/SfWH3V23YIoQj5N1zN/YdXf7X80CbHUnoxHsjqbwlorYNHJ
	kcXcpIC3FpkpPlEOQKe1dB1GCIYdIzhhsPO1kHQK6AAfD+RMsJpp27WPshk29WesDi5
	kdafEQsYEv87kwcYCLbdGheJIE1e6OMBDAFdcl4Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654249079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vjppQn8fdL4eI6h8iSpf2hw0qETGEHnvj0rx5rwK3vU=;
	b=INGTki5VWyy6KwRAzb6ZyJwmyb99tMR1xxI4r2D3OJRykRzRjvJWsX8zD7wHjRfA
	PrQgEkGbG+MJBoe864GdaNK9b8/58cQuWFbCRy6QqTQoZFVE+vMtRSCJJnxSH3Nrjqi
	aLrvk2mpkt6013Huhrc2fx/6tbn+QUmIcBj46RoU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018128edc1b1-08df563b-7cf3-40ad-8acd-0947e5598328-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eaa569386783b16bc72117339f807552d91a88349101ee7d30dc11366bdcd7be
Date: Fri, 3 Jun 2022 09:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654249079
