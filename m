Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B4210E9
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 08:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656663412;
	h=To:Subject:From:Message-Id:Date;
	bh=8upgaikP3Ar8YG/6G0LsMGMqySbQbtrXUBRaZRnI1PM=;
	b=I0xIcTFN/6wXAFAu436RkI/Rz2gvI4NcPaolYIxScrSxwLhIw0DRKLu976lJoNAr
	2JfRTZnMCHH0vsa6xyZCMraphZg7QOnwWOdujZvDqCTeiGVaYJGl5GtGs7+mWWAPKGf
	/nhPjvahIUR2SLpw6DVSZh3hi4j3ROdqByF9RHxQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656663412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8upgaikP3Ar8YG/6G0LsMGMqySbQbtrXUBRaZRnI1PM=;
	b=XLdKyJ+RVbDYbsfeSpyU80jo4Fz5ZqfNrZ7zi5jDUGN7JF5DMiGJ/96hHsUXAWdw
	HaG41e6lGq6T/G3VN/O16FvOqDYUwgcNQWzzT8YgGgg2sd9fDX0lm23xGjFj8fU5W9n
	f2ZlkHgZXFQzjufw/tqPanRDX2qQ0wZmZp1fZ9OU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b8d58e34-68834e29-d7cb-4a82-81d6-611ead21ddce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a8afb552057cbb0b612ff4db08d9ca36f5b4c8c15797dfc1d295de77d8e0aba
Date: Fri, 1 Jul 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656663412
