Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133D07E0
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 07:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658822212;
	h=To:Subject:From:Message-Id:Date;
	bh=B3rgwzTgNDEkj7o99YeZoAW8VOEXR3mXa+M7X9zUKIA=;
	b=Wl+xiwx+yk6a+NKk4E2+j1El9eOY/SiDKKndfw/9TRi0o/wrtdZC/J0h/VZOtqYz
	P1Uh51WZhHHPRa7EOqvI1kM1Fe5It6jsQccIHM/96MRhs8dHSybNKKZkawMZBsINEUL
	92A1Sp4GERhoo1Og0G31mLIg3lNbZEd3biru7H4o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658822212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B3rgwzTgNDEkj7o99YeZoAW8VOEXR3mXa+M7X9zUKIA=;
	b=YZ9eeN1cuYieU1HiGKvS3m64VYhsPZKd+3TInzQruxm3mvIm4CrluxubiGAtoXyJ
	Pb6/RtpujFMjx596sK/mw4CKdClY3g2solEcgIMtZRGLPzhk7NxCnHRDc9YvP2hR7zd
	tQr6q/Wbu5PBbrsF1fVhmJI6bacvHOwRdKYbehek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018239823ae6-b074af26-64fc-4c61-aab1-ee676b747db4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea8c3364234bb1430fda823424744274451f7a6fc45045c7cabcc2b71a843051
Date: Tue, 26 Jul 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658822212
