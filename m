Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D61D1865
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 11:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652097178;
	h=To:Subject:From:Message-Id:Date;
	bh=9l8hkF6m7sHEHQbpQOdCnfk26UTgqlWfeaPwGrYNjhU=;
	b=LrD0B/UbTSMrmlAKPqsfNRwMjHPfw4Alme6CgRqVETTZOgQnPapCtvyDDLCfmuNH
	QRO+JruaRhz+FzrlAEoimqgj70hsxkZaUjDFg//1PsIlSlg0Bl5DbUUBRcPrCgjSEHx
	54uBfk345e/WS0D+8C+sQYqVR2Du5mjxhy6jhm+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652097178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9l8hkF6m7sHEHQbpQOdCnfk26UTgqlWfeaPwGrYNjhU=;
	b=jLFOiwdirxd1aA0M6lFfv0Ymo2R7tQa4MiXA1n9AcRJ5nlJhVTD21hOX6tRdPzkt
	HzwVB7/dvFwNyQSmYSspPQP+9JFM7NW2DR4Bmhu4fGCpq6C4TViZwP2cxwmdERPaZlC
	ecGQskgqZUyS6R/J+qFnJPK0ywYyeg1MXExqCof8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a8aa5ab0-f51125be-a198-417b-92bd-4155d42a3406-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26cee0edb5b46bc323ea54c4935047f1fd79c48880cde576b980db969ea04d69
Date: Mon, 9 May 2022 11:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652097178
