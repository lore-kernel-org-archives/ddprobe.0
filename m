Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272547A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 12:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654865579;
	h=To:Subject:From:Message-Id:Date;
	bh=SjTQrcOG+GaC2p8sChnhFkeMtW8z/4px9AJ1CHIkw0k=;
	b=ktsFDs6Mb9Ce++o594HlA2kF/yfLXvpcy8OhHMuwiNyJru+Acx7mK9K+3HBkvCoe
	w/xXm9ar8mftoHJSlWMOEpJffTsK79btwoFV6doMtrgPGLQXMf28gPkSCilNaOBMzHU
	W3rdpVHL/5PS/gM1w/r/FNnaMqg4heUjgmtDBnxA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654865579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SjTQrcOG+GaC2p8sChnhFkeMtW8z/4px9AJ1CHIkw0k=;
	b=SIUtbhA9TvZqNNtU5ynW9yS/E//Ks3fRJ/fPDwTYq8wYMs7Z8K2mOF5BVkVSqpgA
	4DSXD/TAXens7cGiem1yQ4PeCLz3m1x3tOxpRIj3Fl+xPyx3ag2Uv2BpjUVKZ25Nqui
	ZKTWtZdoCd3E2XJsbkERpiHzjEOmgiiGcginwrR8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814dacccf5-cce46f88-3549-463c-876a-90a23343a484-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f26ce7f06ebac10ce98e7a74799d1c27ab9dbe4263f90db6c44fe048208c079b
Date: Fri, 10 Jun 2022 12:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654865579
