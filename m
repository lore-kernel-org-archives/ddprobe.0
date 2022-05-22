Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57CF3D66
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 23:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653260699;
	h=To:Subject:From:Message-Id:Date;
	bh=iKx1cePwZVHFPqUzH9RCn7BuUI3IESgx+GWLYeT65tU=;
	b=SDPCChbRRaCd2d1wMAZ/tuSvsddRsjvcD1PrMm/pg9irsHLhX4I3PAXsS3Cd3uqV
	c0p2cKzR/IuoOo+gKMU9le3jYP6ac+r+qtNRvfsAQMW20XVIi6WwFrm5mtTjiVeUoRo
	UC8cYORC9C1KdhqF8uAKVC/tqqeIhhexsqr1SEnc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653260699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iKx1cePwZVHFPqUzH9RCn7BuUI3IESgx+GWLYeT65tU=;
	b=XsNUlTGKjIX2iA+Jvx0seW+Yv5PoE5W+Qs2WLo1dDwTR2R6CopTosTKx/DczBROj
	unsYmHucOaLUtVicn3dtddjAuRiPkZ+Q3NLVKT/ZjOvzrK3nNZTThH7SrKgjTK1C13c
	jukw4KEAqIs+nhGx36K3zWMepSO7zZ7PDO7pBxe4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ee044698-5cacf314-887e-4f3a-a13c-75af49a01681-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ef74b5f6b39408d8250ec9c323259dec372ac5c413431a562e91df1737ad535
Date: Sun, 22 May 2022 23:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653260699
