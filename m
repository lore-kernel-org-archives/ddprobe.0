Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1A24C98
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 21:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656453412;
	h=To:Subject:From:Message-Id:Date;
	bh=rmvbBZe3ua8ym5jTbKcEdtxcwrW+RpDhiiRFvoTiGCg=;
	b=Ysc73yy51BuzcAn2jEHnS4Hyysi1kYqyYUscprjlkkjWg5rTKZFhq00RhLwW+Bse
	vYJqN7C0/JmtkUYRvFqBGoVml0ktR+vJVICcxdxRufEFJfrIK0pVppIGFBif9TYkAsW
	HUe0KpuMinTRObHd5qFlojotauWyjT0OpzvuhFgI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656453412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rmvbBZe3ua8ym5jTbKcEdtxcwrW+RpDhiiRFvoTiGCg=;
	b=UKB9tZp6ZStBCWeFaVbx4MOd+5GaUgBRH34zzfQmVy3wYnK5b51Dk49F9Am/ed3a
	GKDccBy7dJOWRuGnsc4CKTHuPsX3i2EOXCfj0X6fIra4A8AbMYZPAlPVGZ7zAlPLcHz
	PWKvgGaf+Fn31gL6pjdor2PQm+oSBWk2xQfGkHc8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ac5135e8-1bd46a0e-d3a8-4efb-bae9-6aa2482dc9a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a05712a6e75731f3944b10f368c1f0b2074388a6e5f41426a6fdbf9fe97c4b5
Date: Tue, 28 Jun 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656453412
