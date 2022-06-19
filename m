Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A067B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 18:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655661839;
	h=To:Subject:From:Message-Id:Date;
	bh=d/I93zX3hqJ4Eo9FFT3cxMsUJWkYqpvy5iwzOAkEcY8=;
	b=EIg75cb+MqxjBv1IfpbMB2meMgx6NX8rFxRMZ6VMAlqF8x4/XUlgig5ZbE5Wpgvt
	s5iAw+DDsCAEwLYBULfDJsPMvPae9yx37nko+AHDitdLVL0FMUCnFc1cNBUen1mp+Ev
	H9dNaEdS2foIk3+yvbzPFgej0D9iRL8OkB52r8/4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655661839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d/I93zX3hqJ4Eo9FFT3cxMsUJWkYqpvy5iwzOAkEcY8=;
	b=GD2qry9i8Jua3vC9m8uC764ZcVgIEyDJgkLePegrPv2AGm7sRSMlZ+tTFbqsdZpq
	EakrkHa2nDPBxALlvA4gz1NpSYShI/eqxFlNrBprq0IMLSuG97P9Owf3Cifrk+uOrtX
	60MIYOi3itfchd8cBcZ8BjJCiJFz8i1QYqbOVPCc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817d22c3ba-51684965-2440-4699-938d-cffbfc249823-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2933d75fcfbcb8b2e351c6a279dd5e150ecabbe683d900cb496b2a0944d595ab
Date: Sun, 19 Jun 2022 18:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655661839
