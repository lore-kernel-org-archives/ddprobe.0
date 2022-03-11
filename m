Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E372574
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 21:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647035185;
	h=To:Subject:From:Message-Id:Date;
	bh=DD6zBZm4NqUWfOnsaa9nLK+BGt5P1J90l4IU0fe0XbQ=;
	b=Uw2IAqnT4gkxJ1CCw6Tzma3l1kZPAwVrtZ+Kpjr8K7AJ3JB6MIH6/ZF5GldCiq0C
	4opYQqsExTbUZhl9MlyV7fofRD3vLYEVTVIkmboK3oj/M3JMIo+/ICpf/S+XkgLCzOD
	M4NuovY8KOoNRKzP1KXpC6XzPlJLTRtwO1Nz5J9w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647035185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DD6zBZm4NqUWfOnsaa9nLK+BGt5P1J90l4IU0fe0XbQ=;
	b=Yc09NnYYnDPfNtZuj5HjrlkTHoOmPZYcghr+TZYuiQsbGgSmkaKhgKHI6Pl7VZh5
	76viXHb2LYzdpQn2u1zaVqPfSLlfOu3VyvHCVyu8yptdrAux6t9mY77Y3cuFMz0Oq09
	XCsSCb3BGhcdWY7sfA/Qf9jiooF2Co7Vk3n6yGMc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7af276b2-378ee5ac-8690-4f3d-9a0a-ddeade9901a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2547f958d2c43cb9f46d2ec9f268362c0606c4280e5f84b5b205e45eaffba66
Date: Fri, 11 Mar 2022 21:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647035184
