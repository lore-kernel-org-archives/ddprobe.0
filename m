Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5437433C1
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 11:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657625212;
	h=To:Subject:From:Message-Id:Date;
	bh=/9eN++7i6lR/Ta7gI+HRL8X4+seLsBRonmvSVBWH7fk=;
	b=Ph5ezylUHdKktZxmVZfDv4dot3EBDobi1LGPlTuYOgVNs+fDaSAM8f+XaAUo2uJq
	LOTd1zjEEAXEjcKtjNDry3EUXt7ua5QbHy5Q1QZWYzkQYxo95h+vWRPlDPnrU49tvM/
	kuvTf5rnVEL9DKL7M2v1l0LjvYITiEz52URIpLNI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657625212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/9eN++7i6lR/Ta7gI+HRL8X4+seLsBRonmvSVBWH7fk=;
	b=RfqJ7u2oNbJ61whQjubDWC7JlSIhFsBGbOMOdAR0zFYRd4WdN3RZTVhh7+rfqwuq
	6xjfMHkCVRvZjbUEjzanrqcDwMEcYDbAUJQho5m+a6U8q4QUBPkQ8+TXIPMXNR/W73J
	d7S/PrZdnKrxWHyrnxdJZEBpOKNE0AdPVJz9q1Uc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f22975a3-71618f39-0ad0-4812-bea9-9d0e8c4f3f77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f10140556f9e4a11a9605d38dd454d2580d3550dc6e688b53f91b25c7e13c707
Date: Tue, 12 Jul 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657625212
