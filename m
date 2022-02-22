Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4229C2F4E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 21:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645566085;
	h=To:Subject:From:Message-Id:Date;
	bh=P+j4VamQ7fkMUI3wdCQlz6jV3BiMhJPOM11QOZZKBhA=;
	b=hF6TqJEKUhTNfL+3XdyyKKGSACXOsGfWWcyUo0/+vXg7/Ixyp5XNhqDf0VfGGKks
	1YdMur4J5UmSzAa0wdgzk8RCF6QSPmDCAbeOX/8LRIT17I0br+xHrOG7t5bu/+C0ivL
	gB4+ta1AGrRTElDtKA8u4JVgFe9rlCOKmglugtQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645566085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P+j4VamQ7fkMUI3wdCQlz6jV3BiMhJPOM11QOZZKBhA=;
	b=QaIaR91STdMjYOWMqOhk0+ix2E47P2UC9nHDTJPW+YV+uDDr+a0j6C/kN4WLbjez
	/zwGwp99MdXJlVWP6pTbLoEtO5uBAclL3nusEpSYYP8g6y9Dwk0jGWyIyJ0XsIsEShy
	gppnQCxXHZXNDKVBjrQliMlVvM1EW0VOo+EqLgAI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2361c6f7-de07f047-a9fc-4153-ab8d-471f59a8cd3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ae6c1191d4ec2b9ddc95997f8ba7b5aa396905de940675926a40391bf2fbbd9
Date: Tue, 22 Feb 2022 21:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645566084
