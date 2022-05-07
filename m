Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116A07F
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 23:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651967698;
	h=To:Subject:From:Message-Id:Date;
	bh=5UbYTFzXIoKlkt1nLVXcwRmj/mvpdNgwzuuYxy1alL0=;
	b=WWsOt7TUuUjulQR69S8G6b0hvSUmqr4HlicvaBX6WRO2y6wYix+RCQn6L0+OEv77
	8K1ktMrz5wvjvKTTg3CWOTFZjx8OGdHYfOIFXT6xlEJZ3/BP5jmL3Ie06S3KGVbMs3F
	KmRldg4FiQI1RQ8zS/sy4ftszoghjMEq/3yXMTks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651967698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5UbYTFzXIoKlkt1nLVXcwRmj/mvpdNgwzuuYxy1alL0=;
	b=dodDhm4A0xxbTkpPcVOCcuZyaDwFcCKqfzoje5vPd3kGIUovajhO0dvuKaKQLzHM
	UcdMPvqvuABEQ/Jc4S2KfyJZ4fKJoBz62EkpzSJ4s2JuVFduXDEyhjfAqYoi0oCwy2/
	Y53fGXGfbWxCxscs2Kjqxm9UzxUiwMqL1PC4vZqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a0f2a5d4-10b5f9fe-ed9e-4022-b493-0958a4ec74db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ab57e20b235390b40dba8fc291e17464c264728d6da36e26fbcb88f44e16e17
Date: Sat, 7 May 2022 23:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651967698
