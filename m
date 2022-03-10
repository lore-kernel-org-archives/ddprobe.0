Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44ED97A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646917884;
	h=To:Subject:From:Message-Id:Date;
	bh=DT7JXl+VZLZQ9aceuOZ0zhFr+DH8m3g5358bBL8fkbc=;
	b=JI4ZzYxSlUloe//IqjQSTG98ddR0ENUuQIKaiZW99FeijDwX5wOuOTXuINZrlK3z
	Q5Liol+gM8TFH/lu+iUkCb2AD4/jfY+4bpOAq05aCafOqR/hUt3hGPcldl/bcXKf//v
	WOyWgWpBImj8+MkUvFvjjYmr38nG6uige2tLaQ/I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646917884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DT7JXl+VZLZQ9aceuOZ0zhFr+DH8m3g5358bBL8fkbc=;
	b=bINh/aerkoG6thUzidi2/eZGLgRFko99nvbu+MEUnvtflfE2H3qNLEk3HKLrGkLL
	FdwU24fsbPS8XIp/6Aoq+NTsMAsKHNot7mE0cwrTDkceWt+/BBtbrjOGX+hb+DqJnbl
	j64tUc/fZLKX+hdHT3QPyEc+4DuG/f6l3x9kNk6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f73f49b3e-34d0ef58-f58e-43c8-9095-9d20e5df0a42-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51a81e8ca772b6aa1cacb4216d5d5c3dd5023711d931569c6f03a023b439ae2f
Date: Thu, 10 Mar 2022 13:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646917884
