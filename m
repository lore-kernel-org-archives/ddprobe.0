Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B7910EB
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 04:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651206238;
	h=To:Subject:From:Message-Id:Date;
	bh=GIeJJXyfWplqz7LE8p3H3bd5n5wfgXqGVQp4WjpdMLA=;
	b=WSIAiqBhbQwULlw2Ge5mh/UdbjASxT5UmdtYIUyqillRVrwRSFiguagmej3Okp5u
	ouQ+UcgVInr7TIKd7fhkguhCAqztSdRRwgopuibRRvjQw/OMjHAqdcFhU6sve6EDhll
	B4T7wd2C0DyOGLiMfwMFIJiRFYtNbiMSHAs/kjlc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651206238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GIeJJXyfWplqz7LE8p3H3bd5n5wfgXqGVQp4WjpdMLA=;
	b=MwRq4wK5xrmwJ9tqXPF32LhakI61s3aQsA47GStSbBMcU1dcjeIIoaUnLJ+5vtAt
	aqde5Kk9jc6Ifej8Zux/JqMHp32CNRurjHTxjH6kch7VKGJ9rVHzgAUP+AVnTF7nSkb
	BhKUhdxVUoCwqAypqI1bYhEwcEf1W2iZV9BLFpQY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180738fb034-f9c2ff3a-a655-4d4f-a2b9-5ec8cea8d205-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe77bab8165ad6770b4602113ca4a53030e09402e76d4b949b547b650b7a2b0f
Date: Fri, 29 Apr 2022 04:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651206238
