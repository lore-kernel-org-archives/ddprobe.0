Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD8B7E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 04:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648355698;
	h=To:Subject:From:Message-Id:Date;
	bh=gkoAT8O0veEfLLG6FtwC4ChDECK+hcJEDccRqimF2Sg=;
	b=XelVBFYECUMxf+imuhkBpUBzjF06kPsAilpRYLcCnS2fLupYGh+G6LgiCj2Q9ZFV
	ijXsDg5JmG5z1ygxHvdHn1e5AyQRjCUzbYGFlgSAErP2ajm/55YkvczNYfTMuHEmDgw
	7yO4c6dHP1ABNyg22RhjOn3Kr1MplWvI2erJFgWw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648355698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gkoAT8O0veEfLLG6FtwC4ChDECK+hcJEDccRqimF2Sg=;
	b=j1Mdf78u9jDc8Ry4Y1utRG9423rnkiNfrgjBgu05mD+UruQhCiQdVN8MODXNtJUP
	43ORFkvtAWQG8P7XsChiHbp0vS1ixLNLzcpzexrDsDj52OWYR3ouyCKvx2/rhYPNoz3
	OfKw8pd6Kqw7P7ItmwFZ8fZglw9J5vE+kdxJRcAM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc9a7e642-ba427cf5-0ca5-4ff6-bf3e-5b428f875626-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aea9b4eb13352e0cf9d04efc32df8dc48696ed7416017a658f352d219f17d0ef
Date: Sun, 27 Mar 2022 04:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648355698
