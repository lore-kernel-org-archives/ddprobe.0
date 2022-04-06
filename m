Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1107E
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 00:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649203858;
	h=To:Subject:From:Message-Id:Date;
	bh=Je8qCFJuR212MDxg826JTRnthoid5LW11UjhyslvKr8=;
	b=O6NY0JvVs+2dh9UzprALcjTowG4pb0EEYrkblhEccAGf8Vwshnr07P5mMrsxEFe2
	yb9/jxSTy+q4S7bXuC1SHwtms5z/G2o2oHtMUlbtYD7sBlVBLJpYyKjrPgOHRLWBTEK
	twNSSZKwW9z/LbGVDQwu1Pex+W2eWc0O0EBiUvbE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649203858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Je8qCFJuR212MDxg826JTRnthoid5LW11UjhyslvKr8=;
	b=LiOf2xiawsfgRK9huYJ757CqSZspQV/jMuqGDVe/k//tnLqjoTJkodJAYTV/VNV7
	WaKPGOpIWwkS5lW0rq5m3R0cUqCBd3VHR+k39/17VmcHVm6Py+uAW5vKOks3pkOKHE8
	gPlG5abNGBxWjdcufSTTK5ZoDPEBlBGnJacs2z60=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffc35cb45-9e350581-213d-40f4-aaaa-285bf1b4bdbf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 771386d12dde982b6c8f72177b8f0745f83aa9d45731fac80d056a5c9ad47f43
Date: Wed, 6 Apr 2022 00:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649203858
