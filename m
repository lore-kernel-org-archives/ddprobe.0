Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE44A50
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 16:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654187759;
	h=To:Subject:From:Message-Id:Date;
	bh=C10YDp1uSjKC18Gz6wNyoEc6yJstPyTcZfQqBWuRJrQ=;
	b=MZ94yKxHcl3B84s4go+U1LtQONMXmjk7CEDBZX/A1ULp8/lxE4lQNWRcqULPEeHq
	+m9J5u335TkzfR/MP81TwVhVM3wpSJIGxb6MlYY4pW1fMAr9diiSfrPDT1ZNZZ/Tc+Q
	Wn12/ZoaZeBR8ClXu3j/7a1LtIDqBCWBnYjtun2A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654187759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C10YDp1uSjKC18Gz6wNyoEc6yJstPyTcZfQqBWuRJrQ=;
	b=bxGsVGfx8meJkmF9a2NQYyYrMEUUYGPz0YpW3zq9bWmtykjiPvJ6zNMdOcA77kal
	eRmo4T2pfgh+LlgDAwuN1NTSAE7pE+pz4IzZ4yWSzbclt6aJyzlhREUYI0A7eIS03M3
	YM6/QP/+BrWqCy2Au8mvkAJJSbMxXer91b0Prfyc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181254616ea-83f82baa-6fcf-4b75-aed2-44d74092bd0e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5e033bba7246a68b0d11b1f42300ff6c62339aa5ad3ecf4d5fe0f81fe0df471
Date: Thu, 2 Jun 2022 16:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654187759
