Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065EC17C9
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 00:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653179459;
	h=To:Subject:From:Message-Id:Date;
	bh=YSQjfUK2A4iV0tfohfzVLFhSkH6eE9iX191MwO+LAqU=;
	b=PETRBC6dEfbn8vYlXdhcoeMYJ5ec0RxluT4R2KG2Rv70s5mFuf5X7FSDW5TQHtLp
	dJA9Vd7St22VKupjNYIRiTgpCjZ3g0FK2ca0mD3+vKNeyf6nf3gMapJgUrcjUO9WqTZ
	LQYaLk2Q+3+b2q9ocWBfKosLzZ0QRdv7FgpWx+JI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653179459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YSQjfUK2A4iV0tfohfzVLFhSkH6eE9iX191MwO+LAqU=;
	b=Nf/1+sT2CoISCViF//WeImqXDb68QbCmEtqxI/fUbF2ujzVimx/qO9WIcn3GNRei
	d3buRO64XbX+7/ogBv2zNjwq0aWA0BLCdMBSvbQRLlKLLRVnhTgG57W6owaoi84660K
	YBue0CZwaF1A2+b7g1Vrb+iZJcvwMaN/VrOJHMBs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e92ca6f2-926eba6c-8de1-4a97-802a-75ad31affe1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d1df88168f5f42a79c89d0cd50631f0924d6e48988cde1226c95b352cdb40a7
Date: Sun, 22 May 2022 00:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653179459
