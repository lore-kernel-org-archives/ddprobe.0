Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202784681
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 23:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657669012;
	h=To:Subject:From:Message-Id:Date;
	bh=5JTaDKgBzQexDKU8Ch9wya3adRqDWWD5cky+l7poiF8=;
	b=Wk/Muqxjluz1fg6P2CShMwbaOdE/hf235ipMm+rOYHesymzHJHfgw4I90VTI7KHu
	wq0TY4bJMQQ+JhwLN36QlvMtlX8UBC4ApDi833WJype+1XaAEGh9b2xQL0urKFs9L90
	HowvbELp7wxJmUN18RkO3uSz1xiJDnO90N9VLva4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657669012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5JTaDKgBzQexDKU8Ch9wya3adRqDWWD5cky+l7poiF8=;
	b=WHyuDAWx/djp9FB2cAAKN1rq7Y6QGLATJ8Hlb8Myrg68eO/5ZhVq25Ttz3Cgwg+k
	vi0EysMmFLnRMAyJefJcyQcc1cPalW6iGjV4h0KJOH/BfT/3LHHqFGQU3mROkhAzQR9
	USZ04C3bSXbP7aX6PeduKW0jDz+qp8Cf9FuwncpE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f4c5cb61-89487e25-4405-416e-9985-fe0c3e9a7865-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81592b59d950df223dc5e87092c6fa7f4fb2e32d30ac2bd3b2a8c3c35997720b
Date: Tue, 12 Jul 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657669012
