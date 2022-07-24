Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E91217E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 04:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658637412;
	h=To:Subject:From:Message-Id:Date;
	bh=xwAU2GZyd6llS6FWH15nMlW7QgEmzbAF5Hri6mDCd2o=;
	b=j58HJCQCm/paA8OEbm8V5jMNXd47+WubJebPOsHOVw9GCS8c5sWOouY5byg2ZIWJ
	dXTW2rMl/ZKEaSy5T6isX8TFdJIwMQaCjTMXpad9qtpqktQb+V+0kA0+XnnSUaTFEi2
	Kc+M2vHezoQzpfKEk6m4242SAVzUJU5htg0WIDY0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658637412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xwAU2GZyd6llS6FWH15nMlW7QgEmzbAF5Hri6mDCd2o=;
	b=HD9VgbdpSeaMmIMdpHDbLdoRKsBS7nJ/kY3KouPvXyd84CpNScFeW9JGsh4udBOY
	wXyeVQYwoMw8T5DIkr18iuGQrC1p4l0H4mn2nHPmLKVHOTpc8iOy4Z4Q88CZhwqsOPX
	B54WsHQe4X/+RpL/aICCOzLZWUl2mV0j9p1MvECk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822e7e67cf-4c6409dc-7b29-4dd3-acd5-0dfcb1fc299d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07fffd1ba1fac8b56c57a0ff4c911d24e7462793c1af44ba2588c7fbb08283bb
Date: Sun, 24 Jul 2022 04:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658637412
