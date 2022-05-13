Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265B67A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 19:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652470079;
	h=To:Subject:From:Message-Id:Date;
	bh=BlLwwNe8d0b5nWZR9aqudpuksVzXiM7hGImdXrHeSDQ=;
	b=PhNwIwG8wMYeOQrBHtJI65W1MlOm2nQGlVEz2xvdz6TkMeToEnMUjDyaRr3v2rVh
	fhunyXYCPxBj2C4uuXsikbeF4e6gYXx0EDPo+jnrWjiFlxyWPZug26x+FyOPbQa91R9
	Nuk94cyUqQfn1HB86oirbPyz9rJgkAx+wRnkFpuY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652470079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BlLwwNe8d0b5nWZR9aqudpuksVzXiM7hGImdXrHeSDQ=;
	b=jDJbfVigBaEbN/6iQIpxZH/i4HqGQ76DDXICXDpuxkrjwarWl3FEfK7rQdbI08HI
	NzM6M/67vKj3R9idp0fBMFt58wfDeWHCDZ1ASeSN3qiuEWu4H44dNs52Uh5bp4Pf4+b
	4hjjHbiOsQETFHlnu+qN8jW9n2khcldyQwuLmiOQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bee45f49-86e4f28b-7417-475d-871b-398ba64bd95d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19cd44022bb56543e9a98814659500e53d064545dd5038c6267c7c1ba0e74d5f
Date: Fri, 13 May 2022 19:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652470079
