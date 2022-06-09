Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E03533EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 20:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654806299;
	h=To:Subject:From:Message-Id:Date;
	bh=N1BWY0lze4GJ8RmK9TChhrwOBnxB8ZPSuBQ0HZjhXro=;
	b=XBbskkPJ5yEwyGdqMQz2ThKGWVNsDzYisqdqQlE75wuLAOp1IahjCA6LDZzJ3UpB
	lXwjQW3dVB0UdN8QCpeZG37mwsZzE7+jctz1gPkyQZ1mkOta9kbNtPLtJNHemI86RCH
	0Vz4aeaIQ6SiY8eZ6tVpx045YiYDbdrUNzMmeBMw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654806299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N1BWY0lze4GJ8RmK9TChhrwOBnxB8ZPSuBQ0HZjhXro=;
	b=Agj4XZqEsUCHsSdgGiMe0xjhR5UJ4bU8qavuPBLNGib1jDm4QiU+zTSXyIMKTUOE
	hZ8hQMy0kHkGrw6sxjUmzpAGo7u1HACZfZKxPg3WCVvaHGrzVwALIkMFS1/5CSHUXeI
	iwFQfnsAZ7erEkNf00lRx0xwZtSm3XEmRaNTPug0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814a2442b8-0a506e3b-eb2b-45c0-9ef2-7c11a2b45bc4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df0c92fe0ac970ddbec30cb30ac4424456218d984e072c85c5ca0491bb247cca
Date: Thu, 9 Jun 2022 20:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654806299
