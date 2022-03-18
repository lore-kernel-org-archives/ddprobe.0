Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C18DA15AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 04:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647577585;
	h=To:Subject:From:Message-Id:Date;
	bh=+TXrzYQRwQ2X1y0SZYAlPB6se5DOuJCaI2qrZqONtwY=;
	b=BDyU9SvA0sL+6zH+YJ7O4Nk+8ZmdaYaG5l+zzCUcnusPT1Zer9CYvsA5aw7ZOB1T
	igZnM239tIXASjkXNrbrFOCZehiBRxPs4eaZe77VOCyAk/3eK9uWDeCLl6P731Y9m4y
	3/YNjoq41+4f+qv5Av6OnwjtiWlFv3kYYTDOZbaY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647577585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+TXrzYQRwQ2X1y0SZYAlPB6se5DOuJCaI2qrZqONtwY=;
	b=WR+DC6vrnmm/T5u5AZd+1E3m0KY4IBsjS2LYB+ij3551hpcYJ1cb/YHY/avwxQwS
	dAexlyfA/bNhPf+0Xndvqnxtr3lOtmGoJBvWfr43WjLuioTQ27UmiG+mL6+7Vh1Zmq7
	WmO02hgEjXVp5K+VnaZpzvpT5wkDPHR5OhQXYA8w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b46d473-7858e76c-f2f9-42f8-9124-dd8dd7e76172-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 766d1e67d73203c0173d8028b35d43689003bba00d4f3e8f857a15a6f4a9ff4f
Date: Fri, 18 Mar 2022 04:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647577584
