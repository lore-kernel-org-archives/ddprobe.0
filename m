Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166FB3C26
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 14:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658415412;
	h=To:Subject:From:Message-Id:Date;
	bh=hJwNVcOeov3JeYcK5Mh4RT9cnTeincRomsiAsE7yNhw=;
	b=V46TCzKpfFh4RNg6mp7CPyna+ku9+HRxhRecE9Kg1T5VdUdJmrKaGZg+9zBdu+Id
	RUAPVP4E1GX8aNzsqMHKGMTcuqkQ13eP5eI7IbRnAsRlOCQSrojcdCtvJXQhtmoORSH
	l0C9gTAIkW5dUmPzBymNVIkAoMLXjpysR/dFmebU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658415412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hJwNVcOeov3JeYcK5Mh4RT9cnTeincRomsiAsE7yNhw=;
	b=Itms6ZRsZpOYvqGNraI5v7n54Yvs7dI9R2pPnVYp7dZVFiJGju8+nkw2nUO0avl+
	0gDj2gEFOhg4SU0OEtJPIPQueYZICMENDjJHgpKrNkO7PujXLKAHcBoDPERcIK3TtDt
	JHdVwMqyy3Vv3ZrkP7WN+TkWbef+K7TE7v0DkmR8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822142f435-a071d6f9-9b92-495e-a156-e215273c9908-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20bd33832a4503857251489d4a522bf09777d58b62395ae9ab0d0d0bbd6b0b92
Date: Thu, 21 Jul 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658415412
