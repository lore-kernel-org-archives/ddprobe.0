Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D28177B
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 00:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650153658;
	h=To:Subject:From:Message-Id:Date;
	bh=pIogb4oAoVMb6Lei5RUNRD10S1ppVUbq71eJbBiHoSc=;
	b=jQBZVjQqBfGgGZwl2kxSq05Calje9sCTO/1GOeNmb7RQfiAh9Fk0ujq3imnuQEBE
	agXgqWtlVKrnPD8NGoMp8AMthx1HRLW3DDUGe6Q7tKIqnbpsCPJiB9XgCVVR3Cj7YCN
	LyKgcCxKG65WB4NQ5jqKAl7fk9rmmQtLwhbr5sl8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650153658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pIogb4oAoVMb6Lei5RUNRD10S1ppVUbq71eJbBiHoSc=;
	b=ElTf18CvxZP6v2CsZU/GsHeTKSPFZ+LY9HkZwol9vGCmxtWcUbPtb1PHki/CFSpe
	+7Qq7CXOUr6UnmJVeBqOQ2PUJ2gQj3rPL8ZaFniJWJEYoA5xKrvyHMgSzYgs8T5CLe3
	ELLXEo60MgKRqUbvOSyqegTXZTrv2LezYHih1rbc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018034d297b6-e4f31870-cd3e-495f-8793-c5f8552cc6ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67a0200b7e05d72aa4802928300f46ebb5b2e15a7768a3d7434b8f898a99396c
Date: Sun, 17 Apr 2022 00:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650153658
