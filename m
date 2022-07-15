Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15ED5538C
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 23:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657927012;
	h=To:Subject:From:Message-Id:Date;
	bh=BhEOHugeLe8H95DLL1V4pyz58sJ5XhK6KRrysvoK1eo=;
	b=iXCFWx4sAPBv5064HgI4LMe7CFGdOBk5UBxCx3tPvk6D6Oa9dgAIOarCZcUoPTOA
	es6yCcAZCJtCIlyPnSgMYPVY//VIFw4biFrxlC3+628BjDHMb+8H4NKmQHxYr8t+ipz
	BPGwFLGrxK4ZlZybp/yb0AGmo7xGQy2NDQV6PhGQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657927012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BhEOHugeLe8H95DLL1V4pyz58sJ5XhK6KRrysvoK1eo=;
	b=fFyDh42TP+VoJQvCPXYGTna8pnyVl+PfLZhtEi9OojeM32FXdb15lX4Xlw3RnmGX
	oC1RLy383WruD4+gkq+91kuI8FAG7VnHk7gk8EVpYROEP8TqLlvN3TlkqWCPMkyzCF/
	3fyBvNY7ltxfrjRunM3tVJ2l0Isw2M1KFlFNPgdQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018204268ff4-9c17dd32-a2a1-4063-9e0e-c13c07a5a2b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ec91ff5d42f158fc63d15a99d548a84e8f50f663381ed8851222d17b27c3d05
Date: Fri, 15 Jul 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657927012
