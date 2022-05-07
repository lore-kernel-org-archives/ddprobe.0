Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178A51383
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 19:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651951138;
	h=To:Subject:From:Message-Id:Date;
	bh=CJ95qa5vteO+8eDZZ9zw2ntt8Ausvl/ii+NFtVO4QsE=;
	b=Iq+p2RC8XNWoV0vagRWk7y2VZUDs+Vqz00EANRgGeW/0oljA4RocmTulQafR07BO
	bFNUcXJaf/j2ean+6HvuQPflvRNactYJSn33mfVO9ZK1qiU8T3ybXsximTW5JmCpPWB
	Bj0ecmRPwhYWYHnAaXUKyg64C+zBLREYxulFu530=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651951138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CJ95qa5vteO+8eDZZ9zw2ntt8Ausvl/ii+NFtVO4QsE=;
	b=i60jbe6GzQy6MebF1dbE1Jj2kBl7IwU7J62KRjDtjQGFfaRQvc0+yKh58InWIcgI
	xeXrOcuisUhjQy9x/OB3/ElpskE0XRhw4hoAc6pVPhSFQkJmJuOb3mTOkAaGk1Lb90w
	xjhk5hR+f1fV+049D8SpyFvlDh1b1MLKenn22B8I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809ff5f601-9b0a3662-3f56-4e91-9e2c-8ae4773ae8f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0c3388bc84410ec8ee9a3beab65fa9639b634b5e4b97940f31394f9fbd7d436
Date: Sat, 7 May 2022 19:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651951138
