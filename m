Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA8F3FEC
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 19:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647285985;
	h=To:Subject:From:Message-Id:Date;
	bh=vBjs4YGUy9srMiV0a/qPKSycKwZN0B0WT55ELzMuyak=;
	b=WGL4to7PbieinAFMBvinnz5xzV+gXdxtpmik+DHV/NmqegZ16F5+DiiX+2RhzBpg
	kbL20ivpDJ8OCLfGe1VxIwLySyEWKb4RSJXP2/nOskWwtXiI4HIu47WpDscgI6aEb7L
	w8qdn15OIOwCQezn1JmCMI8ZulJuxT7oCAYrSEB4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647285985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vBjs4YGUy9srMiV0a/qPKSycKwZN0B0WT55ELzMuyak=;
	b=L4ApZwnkw6IPwyvN6kAtQ0D70xoRhfxlop9FN2iWMquQhy5DAKUK7D1n9o4jpidb
	E/TLeBJdCGUVHEAXxseajgVwiM2AQIUDBJsyrwaQJ/eJzvnII2yfr454ORgiqRCPIgp
	nSq5lKgVUCFrwWIm98K0Wbm5k3oFFxCCN/NxzSXQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f89e55e33-954fdd9a-e203-4890-974b-61256eaa905a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d87d19615ad054986c348234248054758266f81a3bf33d2b4e060f85fdd0cbf
Date: Mon, 14 Mar 2022 19:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647285984
