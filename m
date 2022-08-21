Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68498372
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661059852;
	h=To:Subject:From:Message-Id:Date;
	bh=jrKtnlOCUxuz9qPp3iNTlu/skk+wsdVYJeKw+70MvFA=;
	b=f2O60nFV+y3K4ukcKb6QDprwp0ssJotWagS4WAxd6K1ERukhfB9bMc9D+Oe8hc65
	8KQ5YmUQbxl4NBhuXg7Wq1bodjN1Ealp8YVtJJdbawwmqxtRt54/4HiVwzD8Jow6iW3
	SDh5AMDiGgl2iqTz0ozqggnX5bW1gKESCzcHsGuk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661059852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jrKtnlOCUxuz9qPp3iNTlu/skk+wsdVYJeKw+70MvFA=;
	b=TmZ2OMPhmvgZWLzDWebGVpSbF2jYJRpm2oLMpLyA7Rd07tXDu+8J59dwaAzylxwC
	IaWCqNiGQw+39UGBMzdXpJl8BpHPXaHZoHeQg0pMUeiTxqt++BDhfXaY2IH04RDzcii
	gMMeGfMqGoXlK/NeJnD2iOuHT0bzotbmKzCKv/QU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bee1e92b-a1852bf4-856c-4494-a951-f559ca932dba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6865a192f0a5939df16414bdaea377e9d8f401cf6a83640c757c9b7ed03db811
Date: Sun, 21 Aug 2022 05:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661059852
