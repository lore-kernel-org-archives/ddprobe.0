Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41541366
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 01:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648603198;
	h=To:Subject:From:Message-Id:Date;
	bh=8nLa802yMXr0zeYHPVD6A09fPjzr7ML2VFxwxgTWhK4=;
	b=Q2A9P/+Hy3MeH6oioBUQxmEpv1I/BlkMgQvsrzeNT1Td+PyrB4l+wdyaGAK198jE
	VpS3TLF5NpnuDXFC2MDK8vpNl03W+whGmqb5Kw0LedY7nAEMoa54PyxyFVRkAjKuiBK
	M0/t+oRJk8C6gcGddAWfkD6FprJKjpm7uy8Kddnk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648603198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8nLa802yMXr0zeYHPVD6A09fPjzr7ML2VFxwxgTWhK4=;
	b=iw+io5bkRYmukaLfDy4xLnIHfZx0vckPXqb4pI4wOlZjVq+YEg26waj2xQwWP1M4
	Q9aOyHb5AiPc8qJSJHKwoaDpuA6mORIWmaXJ/WBtp50LbnuY48rp5kB6uoOwHtO8rT7
	JloskxoTVSZ/dEbvHhjp56RD56KgBjDLz1o8YbCI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd8687349-1adcdc29-3aa1-451d-97ab-cc3f78a07a0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b75025f4da2f6120012d4cdbad61cff6d3b2285bf5daf9eaddbc4a399f9b1e3
Date: Wed, 30 Mar 2022 01:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648603198
