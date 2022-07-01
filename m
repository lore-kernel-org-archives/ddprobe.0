Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116BE33D6
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 23:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656718012;
	h=To:Subject:From:Message-Id:Date;
	bh=62vvJ3LXlfCq6HU+4hqYH3X564tPuT8ogBdYii7Ucow=;
	b=ZwQqAkVi9qp30BIyIkxGyWN0a8/aAc7ogjjsEMoeDCum9S1dKjNzcXCY7L77wEAS
	rbaAJNM9vsOm2JgMeNC1BsjdGqnoRlCrX2DsCUW+HLOwDn/Sqq98LzztOF0GZZsCXEw
	JMqWQ+YwEdAgfOsP6R5dF+aoV+NAtxBNGHbe5W30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656718012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=62vvJ3LXlfCq6HU+4hqYH3X564tPuT8ogBdYii7Ucow=;
	b=HFf6FlibWK1G2njLIGjypM0SQoVn4Qk5m1sT0IRWR1QkFOJuW9Rtibhi6d7IGpBh
	cQhxXKBUuoM2GSqo+UWJtRRNlC0akbbpjGTRPoSZyyzXA9M8FRpQ4FOlJ4oeUBHwESQ
	vlH2yGG/diwaozUcDEPXYNqMncIaCnjxHzL2DMNU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bc16af8c-6583d8f2-fa6b-4f70-bcbc-8e8dae06c36a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb95cf0b5fbaf9d80a6298c597afba0a0b83127425ae7cf421a09b0729eaf827
Date: Fri, 1 Jul 2022 23:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656718012
