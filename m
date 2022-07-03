Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1507023CF
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 14:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656857212;
	h=To:Subject:From:Message-Id:Date;
	bh=gjhfhpbQ8SlpZ/C8Hnrfwud7ZY5BLAspMYaoiSPUxIw=;
	b=lKQycFVisJHNO98IEyaD4/5xPhsMi9tbfyfMWzC0iMRYUtYei79CwMEYexoGLX5x
	UzQsES7b0EXyXWnvkBM6SRgvWktQB63uVOyb0H5DA4wu2I2lh8n46urG0Gt8enw0dDI
	X30bD3UPsHOSalavcYqC83/jqhQPAGkvt+vR96dk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656857212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gjhfhpbQ8SlpZ/C8Hnrfwud7ZY5BLAspMYaoiSPUxIw=;
	b=br9GOIZXZmQYjf+KJB0ueB2eMfmtNgRuL8Cqd3znGUjKx5s8wqNxKmFqHvF2gcKE
	Zh/ZgWLe4VOWFhIyilMnWWKtEl/PCMT5WVF7+V/Wv65NC/lPGp07kmQI36V0QCpf65c
	gBewsvd4uWjG9sNhVJ0rLQk9TOHkn3IQOVJDDl6A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c462b584-517205cb-4cbe-47f6-a66a-43e5172c6268-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be66f07ebd4faeee60f3f611cc43444f290f7eb291eba62625047b1bbd41cf0c
Date: Sun, 3 Jul 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656857212
