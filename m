Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7958CC62
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 00:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647219384;
	h=To:Subject:From:Message-Id:Date;
	bh=zKtuISE5XJdeF6D0HTdw4xDRoXW+DU0Tm144gJQPi+8=;
	b=dKrtUFhLBxEKw9xqAtAMEYrE3/URyEhBFCpqfjwID4Pf1AHJi+UIpbx+I4t9InQo
	/f9AY1oEiJ6UXjn3oKXY2jxr64LWgV6ZkOnmoRaIen0usdIs+WwRZm39lfizk93xxmj
	apkVCyY1wi2leXCrRjyxnRJUdnGPRC8/RCBykZ2E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647219384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zKtuISE5XJdeF6D0HTdw4xDRoXW+DU0Tm144gJQPi+8=;
	b=EKEnM56hQ8XmnA8fLBaLYbTNbgetZuEWuA3XuVCDXWY+fKzCHP5Q/xnnsH11odOu
	aSc+VOU+UsYLu2ajcLqP/d3GfInCw31Foi4+wIGVD1Mxu8yyJKT+HNDkH2E3pYskmVq
	Zyu7Eyk0q2BhAy8/OBb9HTcLlVw47HiHgjrZ5XMU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f85ed21cc-55e0faf1-c95c-4f0d-b5c2-36102eaa0d5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8aa9a411b6afe3f6c4ccb7943ac4d811c706ddc3bdc2c7859dec54c8f635f7a1
Date: Mon, 14 Mar 2022 00:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647219384
