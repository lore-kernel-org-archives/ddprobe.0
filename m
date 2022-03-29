Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512052F35
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 23:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648595878;
	h=To:Subject:From:Message-Id:Date;
	bh=fdCiqotDYAioUVgwZDkUyQ6abFWtkVDvLaFC8FwTFC0=;
	b=TUhQUlGI29whcTvJS1sGaJTkIl5wlQDlzFcUxLxcuRiH0kqFv+zop5BRhDAvzO9o
	U+JnhU/r2PLyMpvuPrWRTpx4YxLeLrlWpSoaz0mcFWrTvATqbpNUmpl1WhERel2R2I/
	AdUPre3nEc5eizWSAQbvU0/vhQ2nRnxv+fa4lhmc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648595878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fdCiqotDYAioUVgwZDkUyQ6abFWtkVDvLaFC8FwTFC0=;
	b=F+7oHe9VGZ6ZQPO/mCAuExFKruAZ1tr4DGDiYximwd0DlOL0wL0Yv0EKdC6H0S9A
	JpUYHoztcy+IM7Kuu3TNpcD7qCcoXBJoP/d7hIgmpsIj0+afF+OGj3/KjAB8iXVNf2j
	rAXwBDD1IZK79yFb/txeHhDqBsYB3nl9Rhybag4Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd7f8c17b-e5320420-7b72-48ea-92cb-c0b233c7064b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a829c9df01883176325e63fb10158de1dee7598f8e82d1b362a1ae19367bdcfd
Date: Tue, 29 Mar 2022 23:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648595878
