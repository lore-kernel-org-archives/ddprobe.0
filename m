Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A11A1375
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 13:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658755012;
	h=To:Subject:From:Message-Id:Date;
	bh=duhyuAL8UkJJFKy+ATZ1qPaKQGCjxknFdI4pt4KWmMY=;
	b=PORRB3s05OSG8uQhQW//zil1k22QyTMXxhYZmRF1V8plNYqJMc1RkPDtWQgtVzRp
	WEJvjM0IwqPO1uYN/ixsrExxRCw88vQzjY5ASn+Fyf2I8TN5vezQGVnbRbKs2YatLhk
	t43Z1MZ2T5CsYzeLpjn890yallqnuAE5KIA7GzLM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658755012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=duhyuAL8UkJJFKy+ATZ1qPaKQGCjxknFdI4pt4KWmMY=;
	b=IHyfuBzaGUyt1ZcfwbzPmLh2APwADe4pPyG/yU/VHE+fv0uOWal/0w3qSaBD2hF0
	uyQFZngGLc25Do1jb6LQ7N2PzCEV2E5qKkDcPzeBh+JNyaQbarLaNIx11qnFopdJ3AO
	rLhIWYUfkqoLC/cJh/C2Iz5qGCH8/WNzxbNdwvI0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823580d6d4-22e14d31-5c7e-438e-8324-c67572026c3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f506ac0969e0921eadd59f219dc7e6c6e556e37f3abc502d4c49e986b33c395
Date: Mon, 25 Jul 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658755012
