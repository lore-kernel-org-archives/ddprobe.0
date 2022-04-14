Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E593515A6
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 20:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649968978;
	h=To:Subject:From:Message-Id:Date;
	bh=4pHzV9gBtq7gTbrhQ2kTPa7qkaBS3Frj3KLCRC2uKvc=;
	b=COBpF4LkMgGYpfMVc5229JYqQaTlstpW8J2sS1mi0bIyn33r+nu0932kj+JGlyBX
	M4+0+cktvys6lL3zUYaBxeHxpdDNe9qIB7JKocbHQjBPM5GSYCcMC3ty6nbgZGywShZ
	ebTt/RkE+aPpdPeWhVSd7tX88PYGU0RhnWrzC/D8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649968978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4pHzV9gBtq7gTbrhQ2kTPa7qkaBS3Frj3KLCRC2uKvc=;
	b=Lg7HNGZ03d+cMA6r/jwRH7UdmGgcHg+0mmfxNiBKRJ49+CcE+5Cw8diYYXO/KonP
	pn+JXj+0Cq9tZ47dJ0m19b94ZvosOdZXzsY6ATj6V4l64RtXmoeEkMUkkWZfza4MGSa
	wDlwgLhDooGj+wdjW2Uvhqf2jIildAs4sHeUM7YA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018029d09950-67966d80-d009-4a7c-87ad-8ac0039f59f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30a7f515868039142251e01a2ac2bec863ec7ae5d64f6c3316bd723ef7b19eaa
Date: Thu, 14 Apr 2022 20:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649968978
