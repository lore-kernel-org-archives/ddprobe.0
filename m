Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8EA15A7
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 00:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652229479;
	h=To:Subject:From:Message-Id:Date;
	bh=On5joA0N4mHBDmkfNlqy1WBCpWWHZ8hbon7s9mFd9i4=;
	b=h30n7++4EHjTdN0ilAZJJH1Z0u8rEyOO40+K9ccXmtPd89TVzORD8M8s+8jGbDEU
	sZfTTVYoH3z6dTT8AjZh2Ehu02YsOdW6uElD9R691eYOLgV2oR3Gl86CPM/rU/IHrOa
	CngkNC8s+KnyzjfcOUwwn/yC5pK4P6mkmjdATCB8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652229479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=On5joA0N4mHBDmkfNlqy1WBCpWWHZ8hbon7s9mFd9i4=;
	b=BP56EOC9YyRK4d6oMq1dTCKe2cDUK7oZLpuMA/MEI5Qj6alWfCkX4QhjOHQ3uP4w
	iLwr+KsGRm5r5rc8OE99SLcMxpMZBDfP7Y2gdQC8Qr7qN5YJZFTrwfWdLmgtfuxX3c2
	nTrvAVUrbgJZHTPgpR5vKKSLQNqDA0mRG1FiI1sY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b08d1b96-9aabbf16-5d79-499d-8420-1e911edbe5bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 599b9924a1a19437331e22bd28763cd9d85b5ffd1b5a842abb8361d509a9b80f
Date: Wed, 11 May 2022 00:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652229479
