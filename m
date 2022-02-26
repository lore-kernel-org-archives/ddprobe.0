Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E73937C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 07:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645859485;
	h=To:Subject:From:Message-Id:Date;
	bh=hAGM8vCaQ/GGQ6l9NLcuK9VIJtWrueooASyUyDWRw2g=;
	b=QU/nEedZ8ceAYWWDbsXKaOQhSEFWlD3mzRoYQOdvlkIYQgS9uRGIqzrJUwIwWZfQ
	kowsIOUanKsThRGaEMZgV22D9sG9j25uYTC/3575nIF1qKMU4J2vCjDkzveM7MQpzNI
	px+ffTO5+lLgla0ub6RVM4+o95doGsA1MoNiSEGU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645859485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hAGM8vCaQ/GGQ6l9NLcuK9VIJtWrueooASyUyDWRw2g=;
	b=KB55OQWdXabAdrSDLxOUllVU/F8ScD8GW1K7hwIke8x0JnR46H18ujdnxxuHSY7c
	E3/ubi/vX2rtTOuRCeUmmxKL1qn8cNQIpwodS2yzxVnaGsAv45Jjr/AYL1P7U7c/j8Y
	ueD1VN1QfEI/Xaivwym7PhTm/ZUnjooqWizXa5k8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f34deb48f-c9a621a0-9770-49a2-bd65-8c060eb2c0f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f68091271175aadbc483762e449ace2bb77ff8d1581f292453d1777bfc23ce64
Date: Sat, 26 Feb 2022 07:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645859484
