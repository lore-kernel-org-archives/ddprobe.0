Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D14627A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 08:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647247584;
	h=To:Subject:From:Message-Id:Date;
	bh=3AYs8mjBm30ApljCwpr9Aqfce69p6nC/Yf3NJ6+Vj6M=;
	b=E3/n/Sb1NRuWUaKl9QbDYg2MFDAScmBS00ipH3wzTAMZJPRhNPJjSgBmVIavfGnU
	nj0/zNLjaPoCLKk3oHqHT6C6x/Ze/h+R7vgADn41DD4MzJNpvnKAeYOUlNumzh3jCyf
	3RRj7v/wZuwGubjVQYbMTOP0sH2w9FOcOD+p+BZc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647247584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3AYs8mjBm30ApljCwpr9Aqfce69p6nC/Yf3NJ6+Vj6M=;
	b=NS9FDWqsRIhkLbCqOvo0jOI8kDvUd7UraMIknkv5o3kD5EsQSkIL6npPUYJqkpFV
	zjgVJWF6md7vbwm4B89Li2mOJmijAu/kPgm/H9ZLb93mkM0X+fL6KGpWIFuCaOnXpY6
	Gf46vHjQGARkeRV6f0EK21OQTOL3Vlf9WeHB7XAA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f879b6dd8-055c03e3-9b14-494d-a96b-35b52520da7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77e79dd50a391ec797f41cfbf3993704660dfbfe97f6c6eebc45825754916ceb
Date: Mon, 14 Mar 2022 08:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647247584
