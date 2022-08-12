Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575B146AB
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660330252;
	h=To:Subject:From:Message-Id:Date;
	bh=4DbUF9OhVKcSwlZSGz2NisHefaMlrpcL6nPlxhxn0zg=;
	b=iE0PXydpLjhS3v0bYTwugbsRKhgxgsNLJoUpsXE59GMmWXTTt697ryTykKS7N+g0
	ITSJnsopD30NW+E3qvJs7KBv819Zqo1X02A/ZeM03GL095grvufbUJ6hflOQC/eisGa
	K+GCuKKRYyBDMAR7U/eYXZfNhTaDGfQNY+3gAi8Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660330252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4DbUF9OhVKcSwlZSGz2NisHefaMlrpcL6nPlxhxn0zg=;
	b=Stfp9yQI3uWm8Fucx0fsqmuVJ+jrG/hkua3g7CIf89WSqc7Ih2Gmm7hDQEJ8NF8l
	ykiCrSIbvib4lw6tUbtKRJ0Nkv48kvSl+1tKnsxxQIc4DjPFkMu6LWddFmsuQ45YBBB
	V7MIA1ZzpDoQhzqzE+Mya2oGihwzlb6CxD1YNqAw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018293651940-ecc7819b-01d6-4d0d-86d5-43abb33908c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfbb47fe47681f2b8ede2061dfe6e334498f05b6e37b88ede4a60f2f083963eb
Date: Fri, 12 Aug 2022 18:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660330252
