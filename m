Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699644C8F
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659122452;
	h=To:Subject:From:Message-Id:Date;
	bh=wUZg4yewIXgzNCUnb7Q81H5xlhV8EwcMHRbdRS+Q5qk=;
	b=HmwpR3iN1SFbfwE5JJNxDJv+83sc0js2xAojTQNxD6NsGvP3h5Yi4CmMCbYoOUm+
	1sy1Tmz2pqi+suRCleUK9KkQ9X+1XM9XlMVBsgIhOWp7VkRx8SMyKoiCO9+0kztyx7i
	5/Ftuy3Ip1XLkn0HBgDCnXhJBJDWwscg4Be1NbUE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659122452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wUZg4yewIXgzNCUnb7Q81H5xlhV8EwcMHRbdRS+Q5qk=;
	b=RHldkzOkG0UB5DZ4tGA5s5YPNggq0tHNgwupbjBNFJL01vXSbdgjRGsdbXqLhXAo
	Zd4X9Vm5nyO/hjM7cEO9cNU3+DDiOT8GQQ4C+YhA5xoDeLbOX9EAR6a0YtPZtngO2ow
	UZxOtcwjKhi3IqdK+98avPmwrp4aKZrIkh+tQ7MY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824b678827-54113768-d0cd-468c-acfe-0d5ce3f21b69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 823caa20d695580b5ed1ff071ec5f8cb6c1c97a19cec1cad68f54e1da2c6020b
Date: Fri, 29 Jul 2022 19:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659122452
