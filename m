Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A9010E9
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 08:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653554939;
	h=To:Subject:From:Message-Id:Date;
	bh=RI8SqtBFTJlxVPd6h7Dc0vXgw3k9R4qFyRboevyfCQE=;
	b=cc4Vp/9W4TMwNg6EV9dzzIyi2cUVcO80/gBAtDCDAoNemoPXb743H0KlgXRWe6T2
	u0j35C5Y8+0k5Fj46osx6RNCwuSzpDKbuSD22vUz/0Or4wFiy/AglytqG+jUFil+J6Q
	ymGz9ubzxkyw13L3dVDSm/7odq+CxHJQdbQe7cEc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653554939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RI8SqtBFTJlxVPd6h7Dc0vXgw3k9R4qFyRboevyfCQE=;
	b=hbRDTvv4LAITeyN65yXqWzztvObq9uNISKYjgnSgqo6eMISoJw8Cc1MAjK8JauYk
	/aMzQ+28RkUpkLG4v8iumtckLGY7kq964rvo1aQFtWsRCewuiGmGea21gSTkT2MtS1v
	kxmH4abljB8/Tv0K1LN1tJDmkG3bjwOF6cHNTuJg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ff8e057e-713c222b-812e-47e8-bc85-14f1f3543377-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16c46455572578f4cf12f4674fc294e9e451ff8b04e5830b8e04e9ee8f64a65b
Date: Thu, 26 May 2022 08:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653554939
