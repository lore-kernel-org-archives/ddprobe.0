Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB3353D65
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 12:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657628812;
	h=To:Subject:From:Message-Id:Date;
	bh=/Fq+lU2mgjg4EEm37RbXxYR6z64KkGMD/KsZuPY+JiY=;
	b=G7cBvCIuK95le6TJflPLHV54hKqgsXCIXpeyf3N9vXbpb7a9ziIqcFKiglqmN3HX
	l1DnuBolPqcMyDkNJiDbeoj6CDaWiqZBivwlvcRXFm8u1OpH511i3akg24xSLGXhDR0
	w07vvbnwubTaV9o6oJ42y2xngHlHAGh0gkOq9d5E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657628812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/Fq+lU2mgjg4EEm37RbXxYR6z64KkGMD/KsZuPY+JiY=;
	b=iOMTzTfPlCn6AdvmTmBDkq5jO2lObJyD4QvL3ZATX+dwI+hgQ6UscKSLA0A/zB3L
	/HwR61dceYVLzwSRskucpnCrZuIi7ljZENm1/Nc8O21ISN6ViONHQ/A67ds91/tzzCG
	NGhCWqW4cJe0Gi7GjSfZG5SJ1zfapE7i05V6W9KQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f26063e0-66fdc849-9219-46e2-8a29-62d11eee7d3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d127a68ca97054e86432694ff491349f7ec73d8ef8a00862ab5b1abaeb18e934
Date: Tue, 12 Jul 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657628812
