Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580592F33
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659820252;
	h=To:Subject:From:Message-Id:Date;
	bh=04LDgjfA3W//kBZnHhsK+3KB9Y/E8Myg+WBfp49S84I=;
	b=JYICXEDMKZHOFCJ9/+0uz9tL2s39wTW/c6UchELhAh7H8SkXTEU5+jE8GvosJsGG
	sFdZezVrik+vPWC+xNuc/IHSxuSvb56Pdj01PoO1WI1zmEMIUCWOmf7dUzBBbTphY8h
	R+dbvxDcMYLtdi1KIJaK2iGTVPwlKBsWSn4ynVlA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659820252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=04LDgjfA3W//kBZnHhsK+3KB9Y/E8Myg+WBfp49S84I=;
	b=eOv7U/Uf9ODErDSFjUvnYPEvy1B9W+P0zAlMAuFozHPGzdXo6AUIQo5fUMDgFddF
	8r4rZk9/ljxSnQrGFihIcEGr81DrMn5TDe/mAlmi0dexbWKxhNCsNMz51vtTjVtoU60
	Hbp4eUukwtYRC5z7Sy//exZMp8B/d0WYz6i3Nai8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018274ff1df5-ab9c81ee-bde1-44db-ae90-55f36f32ae12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7da3e3b4345e72da40de7ae60feb47bca84ed1a46620010dd9e634e241d72ea3
Date: Sat, 6 Aug 2022 21:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659820252
