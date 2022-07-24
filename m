Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA888180
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 13:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658668612;
	h=To:Subject:From:Message-Id:Date;
	bh=NAUbHbvMT0TJWN1TsuNkrfkle5vQucnnCDxjAzkNSqs=;
	b=UTlbo9HQ7Y7DBs2CB89CkcT/M/EpjgOiq69Llqpe0Z8aHURgpHUS2oTeVClPc2n8
	07/0qcqBPJykKq+sakai2FzJ7YjJPWyyllKkd7yiBjjJ9Y2hsbhQCHbQUxV/zTtHR64
	cZzKlEgXBYytXsPUIoQsskaRSk2CchOgrCCEH9rw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658668612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NAUbHbvMT0TJWN1TsuNkrfkle5vQucnnCDxjAzkNSqs=;
	b=bDl4NP7TJKM7HonxKaYZ3xELgmkZMKS3rKZr4ObAmuEdT/wkv4JA9+l5l3Xtrtbd
	DMGaG/lRoBdVegohgEZUOFPzjXy2qNkHZpGWsLuX5lIsLdoB8wE12XljMs2kiUbBF/w
	5RBamICDhb1Fe1Gjkd2vHJpVBWlt19l9wrF1XvlI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182305a7a8f-cfbf40c3-f23d-492c-bcc8-6b069d024fe4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 689798bcc4dc792cb0f8267ce4cca080cf183d980dafcdb157da780a78269255
Date: Sun, 24 Jul 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658668612
