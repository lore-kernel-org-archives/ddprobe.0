Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656237F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659410453;
	h=To:Subject:From:Message-Id:Date;
	bh=yieZFF2mr7RMnUtRISmWX/YpnY1eXCWOi9eVKNDHMvc=;
	b=iReZj+KVEC8esdfgH5t7U/g+d/pJV0LuwYMyNix2wybMt6IwP5tmmbUxGBunFoCl
	F0viebLC28XySIQ7EjNPfgx5fCrLlT6hkWpjw1e1BUpbBrRJiDAxsz/x/VfMmXzkaAO
	niZzfZyJ3DoJPkH/ia3adyI96XKOUn/Zf4D0wsco=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659410453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yieZFF2mr7RMnUtRISmWX/YpnY1eXCWOi9eVKNDHMvc=;
	b=cJudITqwJ3BM60Fj4VQQNIfbcwwV8SCwLp/Lki38dAh50xMgzxYG2vATNo0f0Xc8
	vpeCfo7KpfJ/EcIRqMyOEvj1Ay/xOq+1tmdVnefJBIz67ftCyG4AqbPOIT0uKr3U/ux
	ipqTTNnbZp9Ag0jW+KVsjjBiWJLq3pYiKtDlMG6g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825c92105d-db63313a-f708-4def-8aed-486eba38d64b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33b54a7a620e6baba03b355c4e729b807f6fbc2d9d1ef3fabc9bf1d1f89df856
Date: Tue, 2 Aug 2022 03:20:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659410452
