Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4708F7E
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647072684;
	h=To:Subject:From:Message-Id:Date;
	bh=KVQYn/LUtFdT18z4xrue1+iB2gUsKWWbGBG7vJzC0lQ=;
	b=iYQqQYLE5qsAEVc/xf1xgSEyDabe3BH3qbAdxUVVQdsNGsDhM9V+wyKl0NxDlUO0
	kUVD/wbK3YVB+UJOKZCTVXU3EZx6wFEF8VKrFnB/DAi3ubEOojKC8TMkHoGFQcKddoM
	IdaKtgYPSirgIaPlcFsNc8aC7d3xvV2VntOJbKMU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647072684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KVQYn/LUtFdT18z4xrue1+iB2gUsKWWbGBG7vJzC0lQ=;
	b=b0aLvVtLX4SWGY2ce28RQPx4gcrBVfokyog6qlyNmVGQNmPFNT9XNxUmQgOPH6L+
	XBVCRegeLslobjP7Eb0KMLiN9DIj7HzXdS1aq8OX06CxP9XVDCKMDYKmF3hRCkKTaZu
	ZYBsom3Ld9KByJwXEe7LReqjcpEZFKCeujfcQbJ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d2eaab1-026ed2a6-dedd-4e7d-979c-7d9104ab1bfb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2132c1dec8f224d35d1a36794603f0f7dc629210f575ad1f3550eef3f3a72f28
Date: Sat, 12 Mar 2022 08:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647072684
