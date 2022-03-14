Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81839C62
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 01:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647219684;
	h=To:Subject:From:Message-Id:Date;
	bh=5Ab/zoOwZ4ZiVxoi0tALNLhuZMqLxXNW7xPYAQEdELg=;
	b=WqNVjscoeN6XG0YNIpnFJkbt7DvMTHa8WxfVZpugNG248HInDNYckIKG1ikqbHDX
	AsWmFB0W3GLXcYV5xAQ9SUQDjmbpiUbbi5LTFh/+CoURLO4D7E7nMFRcIF9wd70PEHf
	mPLF6N7o9N1gtPfXFuOzaCnxyVkCdfwmEsFHgutc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647219684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5Ab/zoOwZ4ZiVxoi0tALNLhuZMqLxXNW7xPYAQEdELg=;
	b=Nq6+DibXt+buulkVWoeuHkAtptRurw8dB1adkMHawUk1cu3R6rzN8enR43KehB8J
	xh+c/9DiPX9oTIY5yHDxGPD9SKJsuyjRHKlplsa/AmWxo7pYlYZmxd9ru4AKCaRvQVy
	uSrdf4yXe2i0qxixxn6plgbyZPu+ydWGTNdAIVBs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f85f1b5bc-f91c88a1-b3bb-4c62-9f5c-cf2d281b35ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9125d067eb9afc1ffbaa9a8627d197b61a71a980c2caa442f84a3c21f1a474c4
Date: Mon, 14 Mar 2022 01:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647219684
