Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EB933EB
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661033452;
	h=To:Subject:From:Message-Id:Date;
	bh=snLJrmfmeba6qaVg/UG49RYrDBnVSoqha4f7ngZd294=;
	b=aP3uNl9VqlP7k7QLa8Vm+RqPTinKoRRubd+ucf0Pv2WxfK4UgRlXdAgap6NPryQY
	N3RvawWZHVArRpLOOzKH/gVVQTvfna6eqAHkvS3UTAjfY/MPsyQmA9kDpl6meZ6/VMM
	OXY7CqkJsi6knT1yDO5TLL5dIDz/AOUYr+0jCZO0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661033452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=snLJrmfmeba6qaVg/UG49RYrDBnVSoqha4f7ngZd294=;
	b=WKWhE93r7Q8LUrEm0/vA2RkQCyw2OPiYn9m03RJ9yohYNtvtej6r3chqtlXU66B8
	2Cy4Rokxqh4cBkunnzRdIWCRl3K0in+7Qw2Ti0Ij3+V1aSob4AtEMB6E0RtKiXC/PkS
	p03k9L+gS9vI30TZJq/NhWnV4XIL8nJYx7s2gpDE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bd4f140f-249a4ff1-d418-4f63-abaa-b407bb551b53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f167c6df40186c61f08220ee8fa643e476c84d7e15947ca53c8773b45ac30e6e
Date: Sat, 20 Aug 2022 22:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661033452
