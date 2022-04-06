Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4B3117EC
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 08:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649232358;
	h=To:Subject:From:Message-Id:Date;
	bh=/HS7guG0dylY9JEGGucnjh2A9NCuJDUhJfT1sC0IuNc=;
	b=JjZ+4YvPrDNe59CzeffChPdkXWKJnzzfL/XmGFeyt9wod00efYC26uo2W73RAWqc
	ev0bR9byA1I9uG6Q6ypXBtPTb0NSC7PzCYbQs0bZ+axlMl+9tjL23iH8adV/NBnWU+c
	/olZkVAb0hpBYa13rIZxQ+0yzn4d4adOfkXBAwbA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649232358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/HS7guG0dylY9JEGGucnjh2A9NCuJDUhJfT1sC0IuNc=;
	b=geCZ9N1CgC7Ip1m9h8psxKEyUFAL302fcjIG9RVPTN0tzd31Q7XSL2vyupjZS3bc
	AVLfnxPYxCorfl4bH9DjPyB7kNEeDXHwK2WjVUxxldEP+ewTwaeT2Yka28CGgCvmuWz
	Pj+ES+qycmEAkhnGGhRoJJPypNSIpk54UcURg6Yw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffde8ab63-cf0ff614-4489-4e04-a068-6c59cff1a1d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34f979c7405fbd3a99071ef5e66a6173dc825c69d92c557944fa1a192076006b
Date: Wed, 6 Apr 2022 08:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649232358
