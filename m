Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C347C
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 12:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653480479;
	h=To:Subject:From:Message-Id:Date;
	bh=moiKfRYw8m1HgL6MldVUVdPNXvUO0XH0Be/SHi4d2A4=;
	b=eXnQmIEzjsr+mPLTOOBFkcG6ie8Ekg9eqQTAjTbvjhpgImS01u5zyEa27hJdVakJ
	rXRiVLX4rmzxZ2WJarYjoZJcDgd2VqIVbA7wAtnXTOsSvCD1RRLKUK7bzsPaqQtn3pe
	NIaYR7mOVD/TgHejn8PCLLzkajk/CoctZiwe5+mQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653480479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=moiKfRYw8m1HgL6MldVUVdPNXvUO0XH0Be/SHi4d2A4=;
	b=MtxrVxHOywKrQDRhfc01wwU+crF9zrwZwKcNtuZcP9jGDFlmlHuih8498PD6z/dD
	B/KgYVtz7bF3K9ZE5VnDTqfSRfxHvUD0uhQF3COmj66+mzr3n8gyPXKFzYDtjiV/MMw
	Kc2Zzmra6ubbh8tmWSgjAyrqXFqlVHeLKWwDIPGc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fb1dda59-338f7df7-d015-4e22-b9ce-fbe90d051d09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4eb60aad244c0932fb9f714834cbf19e7092e52ee0f3a7d93ff8df86aa80ac32
Date: Wed, 25 May 2022 12:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653480479
