Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9427A3D76
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659081053;
	h=To:Subject:From:Message-Id:Date;
	bh=SkOmQOiwfQuWAy4Xh70xsbJc2ZsmvPCJXgyKj41as6o=;
	b=cEzHanHCmBsDmsjZrRN448tA88s9PUZFvt1a9E5A8mi+u7izYWpFjNvISUx+BWfX
	5bcFYuII2cjv0BQ2yFFhqpPuVQCW+DE7pIZJhIftr6pwaX46+p4XbujV8bET/zwTF0R
	gCFVBZj3k5FqkP2CeXRDl3EZuK4o93xemjIUezqg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659081053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SkOmQOiwfQuWAy4Xh70xsbJc2ZsmvPCJXgyKj41as6o=;
	b=Phnls8b5mswBPude/sTw7MyzZ9Qzvl5rn0mL0GdMFfOdBXQOzbEoWTKtkdXlEZAl
	F0eVdfA0u7/n0Vv+GtV1H/zDbV7jdOPAtshHYMm08ujmsLPb5mmncVA1FrofulD2rWd
	P5OnQP41865e+orhhTiFHaDt+pwKklO3CgQ7n3ko=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018248efd1f7-45233ff4-c181-4f9d-9a93-2b0a6f5aac6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b8943df05151051714441b8eedc2a2ce46ed238dce8bab52b98f3d3541efd75
Date: Fri, 29 Jul 2022 07:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659081052
