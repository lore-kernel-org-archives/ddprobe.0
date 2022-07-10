Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D191C39
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 20:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657486612;
	h=To:Subject:From:Message-Id:Date;
	bh=KsBK5RUlT9PTWzOOS4dn1WAyfVc+2A7KTyVgRacPWRE=;
	b=RYEXpxvWWAqu4V8AZVuSgZeQ5O+k6uhiWwd2f8oqMNgfUuoMldLzdC9zCty2Iwgv
	iAClAk+ONi0krXwxmDFM2SJ0s8uuDyX8QehOe2sqN9XHW/BaNRyHrg5IlsAeDXFBvOP
	kU9Us+7vQ0pkmPp1EoYaqyipDNcbTWtPgNHGksN4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657486612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KsBK5RUlT9PTWzOOS4dn1WAyfVc+2A7KTyVgRacPWRE=;
	b=DfteNVc2rGL3sSSgS8aqNCkVSiu/29SGrTRr0h2pEOJcBx3kfnLcUqR5wWH2tBLs
	awUSVUnSzxCd3vdk+ZAKK3h2NgFYXw8Oix8mBw3jQXk80ZSZRrN19UWBml8OnuTxf0D
	Z7m83NzTTYUYOHZCFLuolkR1wz/Wd0orLYH69gtM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e9e6978b-625a17ee-cc82-4224-87d1-aa2b5f88afc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 708083ea89fd3f916a18f553de7065658e5f722d0f2661629a1dbd9392bf50cb
Date: Sun, 10 Jul 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657486612
