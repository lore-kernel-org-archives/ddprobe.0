Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C5B1101
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658998852;
	h=To:Subject:From:Message-Id:Date;
	bh=XW6DOvn7CKmxrwT5w5x4Idy1P3NKl3awFde4w28FvnU=;
	b=Fof4mphEqjnkF9F7P1PjTTXtOh6DW65WPgA1IJCOFXR+jMvHq+a4NhxDz7ugHmO8
	zH/o47Atxpqzd9hLuVkXaoVfXjuo2CZUy5aqSrDiRMmbKXiXL4mNulRkkEmvGBRZ0Yt
	6UPm30/P74bbqypFE0sSshxDIGlOoYNAnqSvx5GQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658998852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XW6DOvn7CKmxrwT5w5x4Idy1P3NKl3awFde4w28FvnU=;
	b=Pjy/mvCh04cHmZNATbcPuMeQJYPH1Yx9O2ZU38RhAH+6oRxAJt2dhlq12aw3ulLX
	MgOz1LKZHbk+6TPvvMFVUSqWuNtgSGxrGTX+um4q3f1ZMTAlRrARygvZlmqJiFNrwy4
	hL5OI/SCmDAI6bCH9tye69e+3UPqDlKOs5KcKCtY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018244098bd3-b9187bef-79e0-42b9-8019-7e83a2a3f891-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c1d4a1accacf3f1f5312d3711bbf4569696986fc1d7d9249f7e450752b3afcc
Date: Thu, 28 Jul 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658998852
