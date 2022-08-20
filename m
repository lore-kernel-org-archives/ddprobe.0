Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3332C9E
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661016052;
	h=To:Subject:From:Message-Id:Date;
	bh=cOIfRnbXGbqRaPPY5dBl1iz9qczri6Ft5AeKor6Km/8=;
	b=Qfgdm9xHfAMuzHNjKciioZNetOa1qsywbFAq8y3Vy7xa7JVWRwrh8nokIZSkMAKJ
	1eEiWianpCGccVt+zApGab6tUOihws5we6DyH7CkK5gYPUUxCBGvtogN5FE3WVSa8h0
	/tExSadqfT0DYOZwBsZ5E4Q24pH9siD8Ld+lMwp0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661016052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cOIfRnbXGbqRaPPY5dBl1iz9qczri6Ft5AeKor6Km/8=;
	b=Uz5qIir4Z95p1aczgarbgjDPZEsBQLGsZYG+V9R//WlGsfwKN+7xR+grZr9SMpUD
	jdbovXA3VIyjNJBlfpP4ALNf9uZw5ezSebpWnhSCmc/oguSpMoa96fS+0oh5P4Lcm4g
	yL9VF5brH5i6z3dy0vAYoU2wwjTr5RUEgsHx9DAY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bc459378-7195364d-c6ac-454e-935c-c8e37cc830e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e5ae89358ee151bcf8807cea1eb9be51eb4d68fddd38548f887d1188a17237a
Date: Sat, 20 Aug 2022 17:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661016052
