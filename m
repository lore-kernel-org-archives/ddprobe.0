Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B17B4350
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647590785;
	h=To:Subject:From:Message-Id:Date;
	bh=kqQLoxyKRpMbHkGrW1GaBNr7iRjOGf+OWq5Rmtxgpk8=;
	b=mktiyWSN1UlkVZ1/f5UE9j2L/74EuPi3cAN54bEuM6aTOl7OvpQaaMH5OEhCiyf6
	Mv9/EEfKNQklDoyTXsuVu6hnWnwkDqZaY8X6vMnIfBgW0yPLc3hM+N5VDSXuGPOcwDE
	Bdva43JBPf918WQ7rqtTs2K/stPKVbLESDqIjv5M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647590785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kqQLoxyKRpMbHkGrW1GaBNr7iRjOGf+OWq5Rmtxgpk8=;
	b=MI8T8EcuUiJq6CmtfsiGdTpynQcZZQMUtEOKBeXfbu388s+naNn6Nz/0Nr19IuVF
	HaGC+rCTjB1yoNJ2G/mlyZDSykg0BZRMtj3B8y7pYpGNZLUeLP6sWXEEoZJ4qt5Coa+
	3Qkwg3Yfh+5i5f0w/JkEzlzsjLgF1TVY5v0IOg7I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c103f53-efe049d6-62ae-4884-9bdd-47ba0ac9001b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc5ca3bd422d3e476b16664320e6e8546632b07613550bb165f91e5b98df0e46
Date: Fri, 18 Mar 2022 08:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647590784
