Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCC91FC5
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 14:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656773212;
	h=To:Subject:From:Message-Id:Date;
	bh=8AcJSqDSkOpM8hq8HmwwXidVLSl8fHpC3TF2gr2AlI0=;
	b=ewE5DwVn/jh0W3EGIkCo55UGfeK0El/+2WzyMNALknbJ/2LuLnuOmrRbJ38KVJjZ
	Zz3KrXZiC1+wiGck0CQbdY3rjiYOXwEOIXr7809vntodSK9nApz9GyI681+PseZJFQ1
	nGwqLQnZo06lQ5pbPi8ohcFfAgRS3H6AaUhjr2J8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656773212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8AcJSqDSkOpM8hq8HmwwXidVLSl8fHpC3TF2gr2AlI0=;
	b=eZiOHAC7so88nILlL0YAamhzwddRloHnQbVGudLJjhDI+/eV9TNm/02Olz/AfXfP
	pE+jW20AJCM//C0RXOupDpOb9CNhbfmU8dMTgUnB9lRRuUTrUvjo12/2w9ixpA74Mxr
	pt6wUnbC5xUU+RagNiu+BhglLfGvBc4a9qY22IO4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bf60f8b6-a84663a5-7ae9-488b-bc6b-728272583357-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64f57d1d81a4f15b8fbc56b290712c8ae600690a17074493691ee6a90e9b4336
Date: Sat, 2 Jul 2022 14:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656773212
