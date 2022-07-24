Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183A328F3
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 09:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658653612;
	h=To:Subject:From:Message-Id:Date;
	bh=0V//ja4lqlmkhDkbN5pjRvKCmjLv0tUY6JiviQeCgo8=;
	b=kYmGWSCH+rli8WD6T2MgX0KPYmR9wX4Vf3gFJAr3zVCtC/H+SPauKPbPfSk3ZsW9
	Le0yP7I9zXGspUOIqYxlxjrHC5m5xdP4mAF4FfStkWhQIRBZMlTvu1YubtwQXuGYvUJ
	eAE/K4pVqbVQeNhpIW5nBxJwAhmHzRBFaJNBMjKY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658653612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0V//ja4lqlmkhDkbN5pjRvKCmjLv0tUY6JiviQeCgo8=;
	b=Fa6lfJppk5T6fWXD2jToHJcWs1K065fQYuColq5P4DSGSzkJhYAIIv055Kc9rYe+
	Ua+z0SgC3LecGV5yOLHWTU67N5zzShdkI0QsNO2gDgv17OylH1yHi8zTMOIgavz3vv8
	Kzg8zt8McxFzBJn1+xWVaAMOp6j2kqAqLBXIJs1I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822f75991e-ab104b49-d149-4d47-93b2-56924cbbc977-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c4bdb34f8afd5b749e56a5aa123da6b7c3a98f7861664e8ac3eb4201760fa6a
Date: Sun, 24 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658653612
