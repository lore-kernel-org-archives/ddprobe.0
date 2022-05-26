Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA9DEC4
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 07:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653548879;
	h=To:Subject:From:Message-Id:Date;
	bh=BTEXUtR4yxvPu6IVRPA+4fOu+iLxsn9YuaqrVEHXv1g=;
	b=Y9P7QFIG3k9ksz1A6vEGKOy9nGhJxYgLnyMLuHbnzxSKk8CN8n5C1SstrAemQjUG
	j5nGTbMsrcJ7MPP4UtB0FfI2dpdhPltlhVfg2uvrf39uHf7bwA6UBq4H6VL9iQXxHsm
	GBRQ74F40aYM8zfMtbRMMW+lXyQNR0EiVRg8YS+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653548879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BTEXUtR4yxvPu6IVRPA+4fOu+iLxsn9YuaqrVEHXv1g=;
	b=PDgz+hxXiaX2XO82Z886KQgOdiNfjHEa/e+hz+v159tHJzqYqL0REo8TonhQXxir
	dDWxLSdgl8SDg0t1g37S4UCOldtfPyV9Sm62IQhL0coHwf+c3usxl5MY9TFRiUT68CM
	2xrYVX0YyXiUL78G5JHT+kmNtacb/Bai0rbxD3EE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ff318d99-3c72155c-9507-4b9c-8a94-2fb6ec33b403-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de66f02f3b13bfc7eeb1bcfd7e43b70848fccd322cf266bf972f66223bf44839
Date: Thu, 26 May 2022 07:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653548879
