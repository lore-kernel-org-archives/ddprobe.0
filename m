Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F388D185F
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 20:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654374419;
	h=To:Subject:From:Message-Id:Date;
	bh=F0IgLMpnXGZC6478GGDLy3M4dlsSMDHoT8eQjs0x4VE=;
	b=b6C1kU0R8ehRL/8WEKD3FGAi42BPJrVESaoqFFmETJzb8xJrShHwdrq3K+UGq9CW
	ln5TJkHsx9CitvKI9RCSvxyVLHrJPx3aKfV9jjlAnTtwx9AGS1BPC2uAJf27TVgyM7j
	+L4riD//KTSKoSvahSjZtq0ojE797khttkxu/YCs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654374419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F0IgLMpnXGZC6478GGDLy3M4dlsSMDHoT8eQjs0x4VE=;
	b=KLqQTRqMYf41e+vLLNieAtnkepveojptN8zKNOaFnOpwirFRhOHIUxvvYneLY1za
	QUwxqxj5ZqeHh/fRHXvjGIwOBaLVX+BdMzdewv7VGFKiD6omsfRZdwucXwCc6JAw5Bw
	mlKl6v7EzopnaoZiRkzGjQLa4HVObAqwO//BgItY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018130664b37-0a033be8-34de-475e-ab77-4a384ef8a621-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e85d97472a980de66637d18d3dad82675903dee4eb26c3194b39b54e42804cd3
Date: Sat, 4 Jun 2022 20:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654374419
