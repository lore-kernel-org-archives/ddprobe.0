Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0380523AB
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 15:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646580385;
	h=To:Subject:From:Message-Id:Date;
	bh=yekZlbXXiU+m1JT1e2DMGVSjaHZPO+JI2ORAhbbdWiQ=;
	b=eRj15eJ69KNKAEPOQMXoTAJZhV7Wb4faTnfHx0ryQTKdOMDVyDRrzyP233x+kjD5
	gE9KzzsyM2vdfB4nb9Z3qnMmkjbur1a+kznaDjsIGjyebLKX4OUf1aLDVM0uFlIjCWX
	/iapwU5XlbYod2o5ZthKIjh1xu/mrtubxgtkpdjU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646580385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yekZlbXXiU+m1JT1e2DMGVSjaHZPO+JI2ORAhbbdWiQ=;
	b=Qhy0CzDHH6r/7nhhZc5GraY6fKJ5ebtojwDrdQVREU+2n2shdFSANwfdtu9H6grD
	3C2Ofs3LAJL3q0PaTopKzuQJfxj5iMSWu1ATxU3HrjllSHeeHv5JzA3Zsv4WEeu3GVY
	Quid01JII+Pj4JYhWWO+OCST0fkd4z+j6tx2yhTA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5fd6c40f-0df7c6f7-7481-4b58-8417-8864a09c6835-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b580f1bf1ffa3c2f282d56a60c80194b81c9a51b00789fae4e737a4164134193
Date: Sun, 6 Mar 2022 15:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646580384
