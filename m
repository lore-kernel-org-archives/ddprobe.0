Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135BF10F5
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 02:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654310819;
	h=To:Subject:From:Message-Id:Date;
	bh=oO8DzNypSVCuU25zRAsLv2V6IE//B9w1Epcl8LmJPTU=;
	b=JEkiwgLiz5N2ewhoVa5Uh2U4E+pUbINzfj0naAjTlMlEHbSAbHRMyst0fZ0x45eH
	kr+fymH23WMCWg0GpKij1OMTjg1PtBRHggh+eenuWMjICvS/Wid20Rgo+CbARcfF/ji
	T1gy9+Vqr3AfSXhcN6XM6w6tSE7Of7Nxiqy9nKCI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654310819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oO8DzNypSVCuU25zRAsLv2V6IE//B9w1Epcl8LmJPTU=;
	b=kqtQTvzcUh/sqCHxACKgot4uS8nfO7tu3TIIO9nTEZdxxZQFcWBzWz0/8ANq6t5A
	64xdFHN8kHskxwOfMCWzuicVUfb5V47EUpUURjB67mSRB7/Zx58sgYBsVA2KuhfAEi/
	i3OwazeThRU0EQUmE4dDV93Sp62cZmGf4pzMbC5s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812c9bd5c8-12ab45cd-293d-4c4b-8ceb-26acb9d09b75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e580776181e33271007db6c2a02148bd7a47dccad300f603cbc4ef7c58444ea8
Date: Sat, 4 Jun 2022 02:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654310819
