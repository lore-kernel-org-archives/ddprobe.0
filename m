Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4870C3218
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 17:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653155219;
	h=To:Subject:From:Message-Id:Date;
	bh=+AuJA7tAx2A3Zv27dMUY2zCNgExDDywN0Cp/LCLtJyA=;
	b=dOogT2fJLI5LqkWobQyyPUMifx47ruGao1oslp3QQhv3qQWXMufO0XhnUxp+Jt/v
	GNhnWw0YdHnMjFxiOjRRKKAHb/BQLyRbU7q1slH25K5O7lvf3lGiGTiZTlRWdsdd1Pn
	jRwxRJ5tX8BDE/fip9m6NJa7IkZNc09Llhx/Sr/k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653155219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+AuJA7tAx2A3Zv27dMUY2zCNgExDDywN0Cp/LCLtJyA=;
	b=NcjQBl+4kVBSVXOBJVl7iCqt2kt4JujP426UvPQ50NOn6vSjem2lt1KCjmcvn27f
	F9wbE12osfl6YCO+WooIz3AtOl18dFwKkQobti8TmAWBDUQT2ba2u+mX3bKSIQjdMT/
	IixWx6ANXebzmPut20sX37vMQARioaotx538KosI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e7bac741-87f072bc-9666-461d-861a-00e0a1bbdd36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d402ddc2538313d7d6eee400d6acb5d0a59da373dd4a2049b97121bfc0d9302
Date: Sat, 21 May 2022 17:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653155219
