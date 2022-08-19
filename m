Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91E6F2C80
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660949452;
	h=To:Subject:From:Message-Id:Date;
	bh=K8SlSc9JBwcAt8m/aMGRA63nQ2foOP9QvIYtCpA0Pts=;
	b=Gt8aeOMnWU8SuVVeKE34SvXh39H2mqSvqE8QcKFD9tCSeWuxNS1FMT7ulL5uLYuz
	r/a+be2sJJwtclV0eok71CnBlb4gwpTk9tmrH//HlxBxDj+Pf3On7mPuYvtR95I+QiM
	rmsD6LRfYiqB3sUCZhfyA2Txnj+uO50BowE6J6p8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660949452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K8SlSc9JBwcAt8m/aMGRA63nQ2foOP9QvIYtCpA0Pts=;
	b=alTodHJH2YCcN9n4GjPu/iU7vKQRwvCl8KMNBSRqrFx6ZBrElQeHnmgmW9zGS5Tu
	WqyIpBOA2sbFl8HMnKBplep20V0aVzHWCvKI8D2aK/Q1QzH0xJBdVZxtpHzc/O0pMY4
	QY8B9znzPqruwNivbjQ4Tb9sglcDBpY8Emdf5mCs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b84d5731-7d728d4a-3886-44b1-9d06-885d26c004cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cd065d54cbac89e888fd07a66c2aab8e0d453e74756b582554a2bfdd78729a1
Date: Fri, 19 Aug 2022 22:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660949452
