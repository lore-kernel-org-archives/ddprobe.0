Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8B323CB
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 11:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654513619;
	h=To:Subject:From:Message-Id:Date;
	bh=kVpUX2oiT4DzzvKV1kmxNA+GIAJAhXBYhJdtS6hGBWI=;
	b=IYJ+yj7dDjpo1DHS5+Xa8Gk809vwBNXm/WdSxEeamxEdfM2jS7E5u4HPcHy+dg37
	S5RdA+SVXEBHhhjh5e3UwDgacjHFBlyXm8AatCJ9Dj3o+A3YaMkRmLX/G0zEEWRCGgN
	pN38SngK6DNI9r6CPCQZ8qTAxRJxYG16SkRAAhPE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654513619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kVpUX2oiT4DzzvKV1kmxNA+GIAJAhXBYhJdtS6hGBWI=;
	b=T0r8hpsnjuFdYt+YvS/STvfYcxqKSTaOMPLgo7uGMedYTCozC1ClYDrRQQ+wK5Q7
	OzfkyFRYKj5BFATZBCjr2mTymBjS62eC28sUABuqDUz94XnDCsitGSaaS0PKfAWV1Dv
	Rnpyd8yGmvuPBAbzMFiWTbbzQCE1HH59aVLJ7K48=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018138b2513e-743bab61-84db-4b4f-871c-c38b1c3c539c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 784efd1f8772e4931e23a875385231bb0395ba124bb611cad730ad2202cc7ac3
Date: Mon, 6 Jun 2022 11:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654513619
