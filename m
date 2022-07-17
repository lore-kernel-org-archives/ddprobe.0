Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256717A
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 14:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658069812;
	h=To:Subject:From:Message-Id:Date;
	bh=79nwojmEjKwvPH+aT6SkGBEsNIXHskxHi+uc3Re4JXc=;
	b=D0LU7heOHUa+cfCqwG2h7u3XWQt+szjtUAbktN0R6h3V79OIif+4MwRaygTiUtgv
	xXNEw8u6ba+oHEtR0vNU+iTbAHgvkVZmxb6GyyDCnIYydd3dhbIBbSTg/00cuT8u3Zj
	4KQwediheC+Gq1XXCk2PxThNFxThflCNfza+O6qg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658069812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=79nwojmEjKwvPH+aT6SkGBEsNIXHskxHi+uc3Re4JXc=;
	b=AmkyrYGc/yxmsCuUZymmJuhxPwRmB2Gj3xA1d8eTU8pDkP65WaP0oqXv9pkU/OiE
	1OzAySYqX513pKSUNXxAJcc4E4nAm8mZc/tiOAjUtnYBHmjOsVByNAvY+qx/CTCJyWU
	ogXUjZWnZnkVekPn8OYSPr+dFrBR8G+AuTlzeDE0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820ca9844f-41ac110d-9bc3-4b50-bf6b-f1b737c7e8c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b4cb66bdd3d1d38989d9f6bdadefdac8b64126d6ce31236fe9f4497dc0cee86
Date: Sun, 17 Jul 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658069812
