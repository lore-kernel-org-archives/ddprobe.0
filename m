Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C6E7F4
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 09:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651827718;
	h=To:Subject:From:Message-Id:Date;
	bh=RJxgqDJ/7BonHZ/59Sa0VpCZsM9515cB0vquijgkKJo=;
	b=cUhEWWqt5P0J/k4oAthQsLRcVsqvb2ZxJ/1GhjWIbOnxiU18Cp9tkzwdy+RrQ64m
	kTpWGbnewl35wBCiYxGaQAatqFc33UnE8JXpCffMH1PqJdEgjdyToaIcQGA3iPbmJId
	YcAFtuyYq/EkjqhGQILLEUZcUzMYGB606TdQ2nwE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651827718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RJxgqDJ/7BonHZ/59Sa0VpCZsM9515cB0vquijgkKJo=;
	b=k8WzEJD8EA18lyzriRzCUPqd7J73swolp+jvHkOtJiHPrmNaGFK9ls3Xi5hyDinL
	w2nzPHH/0kYFSSyaVrAAOKNS0XZwSDHQBSgZA+/3UiMBMqDGM8mILYk1GsGWG2bGVR6
	+Am0BIQPMcV4b/0kMB8wI85Exn9HaUMWoef1JEsE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180989ab884-c12b02ba-4cf0-44a9-95b0-904cb0822d33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b032bd200d2b020c578b36eb2b1429dfdd0136522604af4655b83fb4c3796c28
Date: Fri, 6 May 2022 09:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651827718
