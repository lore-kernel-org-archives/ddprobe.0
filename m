Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F189E7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 13:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658582812;
	h=To:Subject:From:Message-Id:Date;
	bh=5WubuLXNJP5xP9StX/c/AqCYXp4HFvMCoAL87Un+5hE=;
	b=SbWiGI/rT7WB0DwFmRU9Bflu2V3ZUxqwUATf8dNIlxGW5Isj25lJXK8DMcvtrXCW
	3WFl6eCDWevGtKZ5710ZKaLLnwR1kdPH2ami7aPFvbj5eciXP3TgTTck7zJxEf3bWNk
	efgVuVvkGXMuOQqaX59eH5RDN/4EnAzJwOK0WyVI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658582812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5WubuLXNJP5xP9StX/c/AqCYXp4HFvMCoAL87Un+5hE=;
	b=ZH84rmDLdwGXWBcIAomkoGixHSCiWoF6I9GJSlKjsLT7ksI0fpS4EDcJ1n2BAQ6U
	89Ei4TL+P/8S31R588wNb4CpGivrzGZbCBEWLCumA3fwPMi/Uzgxs7hd5bJe0m3rY4B
	xLFA56rvbBtYlnZztbSf0vcfTOAvDSjPV+cT+07E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822b3d4657-c4a5af28-4ecd-4f03-9efc-94df0c9bb9a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b02cbf16d7af85937b566ff6e17cf094aa7d56b98363883d750ecc287cf077aa
Date: Sat, 23 Jul 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658582812
