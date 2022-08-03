Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF51B4C66
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659568853;
	h=To:Subject:From:Message-Id:Date;
	bh=l1DNZKTx9KI0rJbz50SVMVhk0EexjJjk0pkvloFDzYI=;
	b=O+lfDxbP4AS17OAyIW2N1KIQC0MeDOsYaNUn08jQ/TYyCX3kxW/LfyEH2yRxWZX3
	NrsaAdiKbhzyX47ViC9VeJ+F+wnQLsG2iWqo4QjZxls0X1n19+soaaYZVPctDcOuBF0
	o15pwWMm1q3nACoDVAimC/74wIlhJ0ibsy0D2yHM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659568853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l1DNZKTx9KI0rJbz50SVMVhk0EexjJjk0pkvloFDzYI=;
	b=WyKIfGgb8AgLc7sYVjTx7Whkiv4GDMPDpKzCkvoorBDh39Pe5awuJWTqKfVVgMye
	lEsL9cABu8wm04bkTyYYJ2JilNj1WPlP3dWsT5Od6qWtu7tK8b2vYX9IdRidv4lexY/
	AL+ROsohSVL8WS/glERmUZaTzZ14gokdp6tvk6js=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018266030ea9-aa18f60c-9e04-4f1d-9819-b7baedcc382d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb535ea1585a660d486c271b3a3bfd76302d83e185c484a368f6854c8356b245
Date: Wed, 3 Aug 2022 23:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659568852
