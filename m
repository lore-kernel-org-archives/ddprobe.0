Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4937B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 17:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656524812;
	h=To:Subject:From:Message-Id:Date;
	bh=6IQrAMxEhPYrl226kSSC1h3HZ4i/0ZlQeQIQaoIRONU=;
	b=LK1WlQwU7XpO3e6bKxcxyz6ONfWjlW6JSmr8IYyMCaG4MKex8b0Ch2K2oD9o2dR+
	hE27LDYA8onegpl9VMvGAKHad/NOlimkEK42Ahu8FDUbthi5XvlAgIcjwo0UbmnbaI8
	OZyFOHeLZnA/CWxR18xzo/ZR06brcSr/412+ylno=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656524812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6IQrAMxEhPYrl226kSSC1h3HZ4i/0ZlQeQIQaoIRONU=;
	b=g+pxyt+HbI6GgC0XcNyFRCTi6pGEhY93uB6N4ktiXlOf44TSf/bDBe6xVg+xkPGz
	Qi73b+uXwlBXQzhe9SkPclXls4uIrvexieQ9nmZ70qIOG/z48gRXKozhHR/C14Sb0GH
	dtwNtr7VzCa1emg2oWI+tZ0B9+r+1r1sem622hsQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b092afe4-fa07df79-de2c-46c5-8624-be88868a45a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99f91e8706812cdeaf81174874c1a42988165d17281bbfad21b16bfc06192eea
Date: Wed, 29 Jun 2022 17:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656524812
