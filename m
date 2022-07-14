Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CC93206
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 12:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657800412;
	h=To:Subject:From:Message-Id:Date;
	bh=9tn/YJ45/d5oqn0Lsn1PBErYk6r/ZSYk9MdcjayaBJ8=;
	b=ZXoDXmHtQan2sZ12EIUxYKI3TOL80BDqes5B/Q4JUGnwsCIU6q6uLsIfJVPzh0Y+
	hMMluGYHOPHT48Yy4dv+BBbVMqdeooFpcr9JGuspdEYzHQXjL95jooY88ja3yA6G5LK
	7ouuEJPBoEuz9FtdAeH8hc+oH3QV2fb+zxyUHSTs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657800412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9tn/YJ45/d5oqn0Lsn1PBErYk6r/ZSYk9MdcjayaBJ8=;
	b=ME2AfOCHh5hhEppMQsKDsFKYr8VtzL9bGBCb5HnLx4RHUTUZL53O49w5y7wY7dk2
	G7Lpq1WD7Bo/sHVaHolR4i8WlFTT8JeDo+AnGsu5qDl94GgLA5Po19CWP+FroDpR3f+
	jypOmbcbIOu6qPfe2SfDbxyS8zo3GP+7az/Boong=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fc9acc75-203994f9-4fdc-4162-b932-46db595ef35d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60a54e3049768ea0c7c5449116782b7f9424ad63471cb2e8144d3de84ee3d06a
Date: Thu, 14 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657800412
