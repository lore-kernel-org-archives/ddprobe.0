Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CEB7465
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 19:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658345812;
	h=To:Subject:From:Message-Id:Date;
	bh=FnQPnUWGm04SaFDM9hhSiyCkuGNFZ1NghHySu+XOr7o=;
	b=KhLK/NT7VcbBffykQXgqu8hpbZ5+nbLCDsmVqM6qeWE4ii2wNgz544TGLu6weEnm
	3lSLpJ09ji7zqkjxsTaszuCIEtXEeIDpdHcjI8xm52nwt0mvBC546r+2Rl1fsGQ2IDM
	pQYhCpQoSxy+AIJZW5y8uBQP57w0S5LT7tH/S+eE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658345812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FnQPnUWGm04SaFDM9hhSiyCkuGNFZ1NghHySu+XOr7o=;
	b=fKS6rhRHMiE5qoIEHScLn+u2Y12P4oM5pa/HasJQPEGyquqyE+ZVjX3HgVK4UV5H
	VqlbM/MZrEfw2MkxhfQhvqfp8na/C7NMjenReVyIDfoqI4H+B0SqsnqtGMffjbsKclh
	i2QpdHDfMcYxnpeVu9mcZYH1R1enEbPfRN4SSLNY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821d1cf1a8-a8416212-20eb-4fc7-bf98-a2810ac2b312-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d9aaf3cbf754e47188fb1f0c6ace9eaf3932f7d8a157c5299242b24365584b3
Date: Wed, 20 Jul 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658345812
