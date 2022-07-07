Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F19368
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 01:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657157212;
	h=To:Subject:From:Message-Id:Date;
	bh=vazGRotXksQt914eW9dnc5W6bKjO6mWVUdhEdL8vgnU=;
	b=dDJy3iB+7h+Tf9BYj2skRUnqK5CTmOQTXQjQ1EU1NjuW7CQGNrcCHOs9BWCHA5/7
	uXrJuNyEHw1QGoI4hyTg3vsb/4RVYoDx/sx9o03Asoltt8b0ezyJwpBcM7/u3hlJE/Q
	Vd6noXKhUWbyEkIBQehUmDL8pIs3iC9F3VJkXDtI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657157212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vazGRotXksQt914eW9dnc5W6bKjO6mWVUdhEdL8vgnU=;
	b=h9mcn7ZOFRPBOaEPSj1DlrNjm+ThUjVB47VofvAtR+EerBZppsga2wwBsfTzX9OE
	0ZPr6dH2OszXlChw/dR+KJHy9o9w0CYWPh05SVTEu2oCBWGZnNLFXaUrcAXTkY98vuW
	ExrzPS4AdeQTOol7o6bgxgtkh5o9HNNKNXgl1c5A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d644588b-5aa1d4d8-04b8-4319-b218-dc227023edc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e05ab1df7ef62819e8d3232e8afff05591d42f98b85217369bdae11b9a06925
Date: Thu, 7 Jul 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657157212
