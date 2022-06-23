Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C3721FB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 16:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656003412;
	h=To:Subject:From:Message-Id:Date;
	bh=i9RRi8Pb2HM7jGzY38tqm/Opz093ugxlmOxV0t61tdE=;
	b=CCLvj8rSfmLVdXwxp7+GMkbTEXln9JZUGPIs4/Tde+TijXBpFJGqdGTN5H/kogGY
	0yoio6TPn9itvLzM8giZrYzlzS5pFwmuJgegzLW63lxbq/dqFt91Urq2UPEZyWLlcD7
	kWWdB5yCkX7tYMF1NT83eEKsy95+HscKy44qjaX8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656003412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i9RRi8Pb2HM7jGzY38tqm/Opz093ugxlmOxV0t61tdE=;
	b=WOwMnEIaBFoqy3Fev3uksJKyAle4UvtkdSWHpz6hEFcEC1j8jw8Kcv2ZyeMT6E7M
	Uwaw2qGp9lTWg/lDcEHEe1brycVc4XzUmT+mT9cnxXH3wlloP+F541i9m09ph2fqb/u
	AWHYb80RqaNL+QBnkbjByCElYx3PaXwvHUhCBV7Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181917ec124-b54c0319-2dc9-4e16-8dd1-1193d82f756f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e99d7d48d8bb4d74371ea48e1e78e5d7b210923496edb6850357a851b910d7d9
Date: Thu, 23 Jun 2022 16:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656003412
