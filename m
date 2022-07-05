Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9617C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 05:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656998212;
	h=To:Subject:From:Message-Id:Date;
	bh=6VURKrADCoJ8zOu53SgB61xXduvj4ehqFwj3WHWDOk0=;
	b=kfEhfeELqInqYcwwWdjotfNGpQshH0uPRxGohDy8rZrif9FNVGbgLPCsCcMpzrwk
	Kc+CkFicraHKDnbICZJjhi3/ECQBX49FIUKYq0icBUifKoMQ7CzsTdtgk5f9DEbGGno
	9Lpbw7f/tpGEVY4e2jeiHCgWfj/1gbuVXvc3vsDQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656998212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6VURKrADCoJ8zOu53SgB61xXduvj4ehqFwj3WHWDOk0=;
	b=fjtYEK1aqgHGtaxa+EYHjlZgR81Huw4Ry18zXvxqoHpM0z/LDp0XjVDGhK0rcb5x
	/q3PqopVDJ3zG+vL5gH/Fyh7uhEMkiUgTatCZcTXWQRN0B4xWGix/SmxdWWvOHoAvqA
	3j2aMI5s0zeraf494W07zMksDJ8SEM2+UdCCe0vQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ccca32db-a03de568-e218-4550-9978-849138ced4aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67043512a234b1397303e237555ef9975ade32df000e4c093e225276a0a61e70
Date: Tue, 5 Jul 2022 05:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656998212
