Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7E77A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 19:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652469480;
	h=To:Subject:From:Message-Id:Date;
	bh=3pFO0RIONe/Eo/v+gAacC6MKkCpNnYnufAL7jfQbpOY=;
	b=BHfcgzqyv3uK89uFjaI/OEsJLJv539krzXd1wbU12/dfdQuCaKBhIuT20tdR4o1+
	ZLVeLenhuVgnNiaq9zQJAZ3UsqPEJWVfNcj6ZlklonmGcOxBFbjdzTG2WALUEpnDkXp
	DfDSva0Wb6E7JMRruGhPllUSuPP86fxTPCbwxJK0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652469480;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3pFO0RIONe/Eo/v+gAacC6MKkCpNnYnufAL7jfQbpOY=;
	b=KTg2PCVKkRoWotB051+4X/wgcig8SY3XB+MZNmnX6DA/Qu0Iz9S/phSFLtqiDwPv
	rbE/aGbNspWlgy58G6FY/cexBvhrr6b3UvlFZ8karZe8Mv8JWB0slm5MdoZ1w2jB/BA
	tQj8FW6TQV19w1IjmcZ01qkxBa36hX7uNpgfYhh0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bedb371f-6c7c6c98-40d1-4e92-b81b-e16baf7b6469-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6361fed8cafeb5085b37bed43422ebac37e830d90d527094ff36dd67a3fffc97
Date: Fri, 13 May 2022 19:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652469479
