Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A98185E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 22:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654468259;
	h=To:Subject:From:Message-Id:Date;
	bh=Sk99Zu/P2IIUTwbzy6M0Ni1KJtXs7d43yAmRS15gEtU=;
	b=lJLyfEBQQE8f7PWnrXc0rHDqrvQhMLAq0P6czSI4eVXbYjHVj6Z3i77vn9LIgMo1
	5bTZDavKPF6HAMu90gxuqXI0AC/M5b/v3fJpNsUYfNTLENjMXGhBOOS0/wzpG9n4I73
	AU/3OxgSeXq3GnYHTkagQoRrpwP8Nvu/OGji24Zc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654468259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sk99Zu/P2IIUTwbzy6M0Ni1KJtXs7d43yAmRS15gEtU=;
	b=PDiOVj3xLt02NvQpTtexBJQRAJYX2v7LoCk4I2aCWL565h9noaljxt8Z12D5VEH/
	rHJh0yogCLXNIdc9E81IH8QgBy+1zQx/FbmfNjSJ4PYIoa4gIKcKjPxYlGUJu0pjhi+
	aLJ0wk1BZHUarduSMUU8++Fvhn2h6u5+Q2j9u290=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018135fe2ddb-c7a3868d-b024-4be8-8f16-edb9517bb2d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b72c81efd76f76d41757d56ba45e4086bc478e763347c0bf130d1f46da73065a
Date: Sun, 5 Jun 2022 22:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654468259
