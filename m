Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3122F18E
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 03:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656991012;
	h=To:Subject:From:Message-Id:Date;
	bh=Rhm0epm9MRa0VDcz09ezJ//oH452oohZIzks9P+kfgg=;
	b=cgevDUg6GtULtVZlafUomM+RkjaJUK3ITu+Lj0Le3BIIjHe64YyiD4010FKLBx0g
	rGEH0RCVeufTo0eymOLqfFv731E/R6JmRkF03eveHdVKSAhVCXhKzqpbY6Yku60bCiB
	WqnC1al0VRJYqbjIaJpg8TOW7Dnbl/yC6tS88h2Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656991012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rhm0epm9MRa0VDcz09ezJ//oH452oohZIzks9P+kfgg=;
	b=ETlW2DbbRpY8GSRTbt4t5l7nt7T94MHOmygYhWzJyRExaoGv0Y9J+chaQ1bhYtPQ
	coZs08NXjTCH8z5+vjXA/uaCCJNfcpvSfnJ6lVFKiTITqL/gS48Qh38TYLpKzh2lwEf
	Rkcf70URIEVfKJMmHBQZT1iGxN7ywr1U4zvo5Mxw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cc5c55cd-3d10aab3-6333-4d09-82a6-1c6b6f638e42-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7eede569ed06c4fb0958003f8ca73086f5f9dcacb8881584bafc39281b8f8c0
Date: Tue, 5 Jul 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656991012
