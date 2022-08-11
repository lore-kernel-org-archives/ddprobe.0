Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79BE33200
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660217452;
	h=To:Subject:From:Message-Id:Date;
	bh=sxluC6f0yAE4PjRKmSra5UHVIN/pLPVNlfKlLk500jw=;
	b=fZULAuttn7sRh0g0VyjSRtZbSUBt7h6zwGF7Zjjpqit3p2004mpb6oijLyXXZfXH
	2XDX4/oDon/EqX6MyQcJO/JksjY2Z/aZOgw0rEthS9TxYdMoyJUIl/TNGweR/ggj4bg
	hW/Qo0dPa3ln45OtYmXy7MDRxV+iEw4k30Z/C/vI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660217452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sxluC6f0yAE4PjRKmSra5UHVIN/pLPVNlfKlLk500jw=;
	b=POuSntM5D9myvQdi4mOVDZgyxoSn/6mJHS4MAAYRyrrjpShOL1r04a1p19Jy+bD3
	dpe4w6AsmXHTmcQC+FZ4NxQa4sOVFrftslf4JndMTF9b7QKq8Nyre4UvZt0ufPL0Xkm
	+0kMt4GUef86eCKU9R1MqyYyici01jhk3qTvz7QE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828cabe81f-5850a989-4114-4504-9ea8-728deeee77e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 941149bebc42f888be5c5958521abca0db67b840ac7c1c782acaaeb0bccc477c
Date: Thu, 11 Aug 2022 11:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660217452
