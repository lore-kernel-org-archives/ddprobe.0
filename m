Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8F6B7A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 03:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647314784;
	h=To:Subject:From:Message-Id:Date;
	bh=6MoOL/JX4ZJjmhP20+C+AgpfFvXFHEjxJb1ih3B+984=;
	b=TaMFW/CYJHz4IGelgesAZ8cA0lJaYQa1hvnRebpzZflD0tK5CYQHKi++abXmiwg6
	EeC4nGfdCcip6EpOQT9bEUMDa7tT7bWbjqWBI1I9WePV0mdKa0k1QnrvmOktgPoFBiZ
	LA3itDHrieDzhTSDz0nj+zGeO2vuDzFNYbYBuxtg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647314784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6MoOL/JX4ZJjmhP20+C+AgpfFvXFHEjxJb1ih3B+984=;
	b=Li5iMKHDn5gibk+AeVZwVHp0K7VNCDVh2iwIqZisiPesVic7ZKTL2exBpxZG8xo2
	XPkR6dQG8tWPx87sE4SFL0B9pisOE4A11cq/06qwWtAKiTs34yJPapi4nGsyPkMrLrA
	8TkbKsxZR2YM3ZKgc0ZIAnyfroQtb6MkdrvozHuQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8b9cd1df-c2b21937-0bda-4a12-ab3b-ec0899ef5963-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b83b893cb4158c8b5719c75f024576e01bf261e8b9adf4dad76f5a7b39a168f1
Date: Tue, 15 Mar 2022 03:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647314784
