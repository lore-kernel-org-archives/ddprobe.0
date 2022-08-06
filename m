Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3F57C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659817252;
	h=To:Subject:From:Message-Id:Date;
	bh=dYaMQNbcsnrpM+elfyq2EuspcyEwyIDgkD2yISkmU9s=;
	b=CH/BPWdnyLMIvDXwbbDKFxxh1mnBM/XfE2U216G2MTPnp97haYaqDYd3aJH/Xlu0
	gYzC3pQJX5fJ1/g9b44t7rpX7uA1I9iFKROyGrSawXuOjXqgSrp9bgfYDs7c7B7+GD7
	9SoDY8cZpBNr3bTsC+zzclp3koqptr24f/St/83k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659817252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dYaMQNbcsnrpM+elfyq2EuspcyEwyIDgkD2yISkmU9s=;
	b=bp8oEnejX6U0H3RmIUcOfekdy6dPoijV5RaFilxqOGylrxmSmEZqMd3918xDxH6R
	wvcPDfxN8u4hCLO+cPdpSYGOHgbVjOkdpIzAOOiDt+qUP49XOs1mBDJvmjUx4vHfgyL
	RUu9+lf0ef+a374+ke8T0sNxgHQBWbTUvdLgLkLo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018274d156cd-e7b3c318-5123-4e40-9d93-23159c8cf5e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 260090b952b25451356c31de34b743500a91e928db4f3767ba85027843343650
Date: Sat, 6 Aug 2022 20:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659817252
