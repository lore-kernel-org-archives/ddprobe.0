Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B1BA20
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661226052;
	h=To:Subject:From:Message-Id:Date;
	bh=AopJx2z3bEO67XdrAQltS86ADXwfHN/w+b0+1YOvQzk=;
	b=UgPE2ibYieu+gSIvNxfHsPirQoIqRlHDaaPXHCbfsmfWkayZEG0UinfObd+5nD2B
	ANU3OWvhCe4C+oa/h12XhL0WyF2oL5sz0PXsRT90eKuQUBk2t5Vfwo2abwk47PtDhxj
	U0XRxyYgkN7GSQ5ddP0UgAMzHzwDInDYJpd65sN0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661226052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AopJx2z3bEO67XdrAQltS86ADXwfHN/w+b0+1YOvQzk=;
	b=GyHhoO2fvk9SwI59QeFOB1TiteZlJCASfPInTAHDtUJRWI7e94pGrQGUsQZMpGb4
	sHKmao4bQp8Cd6NoQWF989GZq4Ov5bmnL4vKusaL2fEQbBCZTecgxOhJJudhrxDpY8d
	x1e5Kno4ECCq8Fh4KPwhtgzbJy4yq1ozotC5ILFE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c8c9ebe7-da5f4165-fe9f-4281-81de-3a44cd07ad90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3e3d7c6deb41321555dd46b4f6de8bf01232f4cde25ca6b5accaad556675411
Date: Tue, 23 Aug 2022 03:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661226052
