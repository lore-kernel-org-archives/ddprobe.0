Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4036A17FE
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 09:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656237412;
	h=To:Subject:From:Message-Id:Date;
	bh=ewNufIV0kyrLFaurUjVftSex+JI5LPyX+881JBP1L6Q=;
	b=STvgI3OqAXcLv8IOO4MPzT7V635RfTjW1zfcmnEGdmIGbOUWhHw0dqd55VvZR3x3
	JwawurPM6+MiHeZ2w8tFyw0IQHpiZvLgLtPU8lc6hvZSQVbhin9RftaiRgpA4vxa9Ka
	8cTYud92u8w0C9/pHiK9lbGML/ckNzWCUlEmcuFM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656237412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ewNufIV0kyrLFaurUjVftSex+JI5LPyX+881JBP1L6Q=;
	b=NGmgcRh0LcUW0s1SYzdDQeQGvySV2Jc+vVbuPVt/fiRtvg9TaGWv9ijhd0aCQ/mj
	xSQwD11CGctEYUMn+JZpU8jcu3o7ypXYKOr8LJ6Hya5/m6m+VAfxEWmmvthIadbqrVb
	7Z3RR28COKYO23z2UN1WYasrdXOWU92IBFSjjuQQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819f714fbe-71888a44-2c03-4cab-8dce-e94384a1019b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b1539eeca8a70298fb04828b5ab2fbb7e7002248c9a8874584686146732ca88
Date: Sun, 26 Jun 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656237412
