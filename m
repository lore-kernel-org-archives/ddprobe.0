Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0A7915A3
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 02:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650681778;
	h=To:Subject:From:Message-Id:Date;
	bh=PZvhtBM+5+mbqnf//iXIKVxG9vSzs1Q1YsCqTVmuD78=;
	b=ggGgXGF7z7pYyOTmCxPKBdeFZ3OmIy+UaQDwxlTrn40qiC9UbQQI0P0s9NKs7/R/
	3NbATivY33b5eIWZfYeRaub7gR+OkKrcBWm6apXx2L6KEA15AYWben7KX5kOuFboigg
	a2kdaiBysolXutoTIgXTrUiVh+kKR30gWJVEaT+w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650681778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PZvhtBM+5+mbqnf//iXIKVxG9vSzs1Q1YsCqTVmuD78=;
	b=YOkkcXeW3XV6i6XuZP0E6q8dG724Uz/x7GF9tbBlfvnEi5AfBBMAzHA1KmoIlQrP
	tS/005SU0OU02XRILN0xxGZ7nGYKmtErvfvgIAMTat2Corlh6EnEOqPYyTzwETZiVCa
	Ch3boiWRF954r/h/IJCODaTvtg3ieIdQdgcSv27s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180544d1039-c8226d88-fc39-42f9-8e68-073a4ec8c36f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35c290089bb62d7a8ca5872498f0295d31bcd02dc5af711ebe1ee2128376945f
Date: Sat, 23 Apr 2022 02:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650681778
