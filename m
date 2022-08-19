Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721802C9D
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 13:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660916453;
	h=To:Subject:From:Message-Id:Date;
	bh=Iv/1Bs26BFQfJc1FId0ENlN1cux/knS3wo/PsR14cKs=;
	b=Fc9UYkw9NqbJYrVMICpovrcGI40h/RYm0uPghycXBw2j6EhC7IxEGbaequgPReNk
	ikd+akkaZDPHtaBTsYQ37nf4yi/oF+b2CxaXl6PrW0oQq+3bEbpXLPqmnVwGSkHfxS1
	MiPGfUvTO4dxf6SFxz26VmuiQ8+bajg989oYG1+c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660916453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Iv/1Bs26BFQfJc1FId0ENlN1cux/knS3wo/PsR14cKs=;
	b=hIeXmJQ22f9Yt5VW/oVMr1trrg2JsoXlYXcY5lkGHiIiPnRGcVL5w4hPsUIZ+4gE
	PLf3CsDX6O1phDOtsIEPeAicnXMQGnqp0pq+8j4PGYozRks0zAbeVgGfCt3GuxZOSBR
	qqqJkJGK4tzrCGVO7o08ZYvr0AdMN1urGjcadbUk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b655ccd7-16eb7e79-f228-4e51-be39-e18490479518-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63e0281bf5aeeb9c5f286d18fa3c842dd9a5fa0414ef1b116795b8d0df07ce03
Date: Fri, 19 Aug 2022 13:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660916452
