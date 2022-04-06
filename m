Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58114190
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 06:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649226838;
	h=To:Subject:From:Message-Id:Date;
	bh=XgP5gtosEpPBWjLpEL97NAwn8IokT/1kVTVIuEia08A=;
	b=Y3925cvqodvq13Ulqkgk+eAhWboxZYN8avOu+Wa76hB6dERsvXlwhAyNcTq4vIUG
	j+mhHm37LMmzqkdYHky0ZenJ/ueIOs05RjmDDIoHiMJl+ImIiX2eLCP0mx8DH7Hc+wT
	sGZuc+cwGzL/kgbwepdHcfCfOnboLnjKyb/0Zbmw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649226838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XgP5gtosEpPBWjLpEL97NAwn8IokT/1kVTVIuEia08A=;
	b=KK0SbbbduSKO5o+wQ/Da3sQlTWYaZRvJ6zcIaeNyxheJPFFzemGzd0IJ3Xe5lD0y
	10QHvCyauTGU5b6D8pT3nsPN9Vugt7p+GMmF5lnFNIseHTh3KRQhNiU6VKePE70Dsxj
	2HZXD1x07u370gVuOR6lwVLYat2SeULimvsoepks=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffd9470f6-bda8327b-cad0-4bef-b2c3-e1c34975cb67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ca636ec254d4b126047547fa537712fb8a6b1e3a461b0d9bf2c0e063bd3d4cb
Date: Wed, 6 Apr 2022 06:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649226838
