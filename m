Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246BB1FA4
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 15:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658764612;
	h=To:Subject:From:Message-Id:Date;
	bh=Yz6KY8X6bwJVkwL+ZguYUqmCkdsSo40fbYcDD85VEew=;
	b=SG37je0VdFDmxpcf2WHzxXdvBmsjpvePZdlDhbsCuGpITxKtfbxEXOVR5aLAd7b8
	RJQ6wzoX/UtkTYcrzayJcif8ydJiIEe1xAoEg9aoS1BlyNSvDc+2Doov14L+pdg6bJA
	SOPJQEzqATChiz8BZZUpRUbozBHANPi5LpBJuYOY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658764612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yz6KY8X6bwJVkwL+ZguYUqmCkdsSo40fbYcDD85VEew=;
	b=PRU+/M0Mr9wDWZN6doQPmQFIYxSC4yLi6Kv6xMGxvsZ5Bf0tcgJzlRefmmnkR2r+
	QBvHfcTNtD4eETxTDc/FZU9x+fuj+1CZdoU+XwHGf79nmbJuIg764abmVLehGb6nj+o
	MRr7oHlNV4KlJSN5pCvK6+4BUrFYS1twbBRcCCF0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182361352e6-356a31e3-c5d9-479e-9b03-8381ca15020c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce464652de408fabd93f74ec72b443c63b2b0c6b001c9b7efd09d3e5eeaa50bb
Date: Mon, 25 Jul 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658764612
