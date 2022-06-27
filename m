Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E331A33E4
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 15:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656344212;
	h=To:Subject:From:Message-Id:Date;
	bh=a7FX1MsHNzM+BDrh48zT5eMFbty8OkeffQJHmq2kXik=;
	b=OP9/bZXaLLu8RdYccdROroXa2LJ3Kbf7Ft0Ph9UALAaJbCdsJDQV5USkanKxJ2Qg
	iDY0EtBps9OWJ78YLN9x7PO6cV7ZKiup9puLaSOHOrVD0cwKcP+5fOsocsNSjokO8NT
	CbcMysQblA6BAWCVeHot3hRh2j8JadjhpXG2slf8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656344212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a7FX1MsHNzM+BDrh48zT5eMFbty8OkeffQJHmq2kXik=;
	b=GTP+en6aCfK81OQZhq3iwrYCJDdBLAqAEgqmBlPFVdyWUwlGCS5NOeEz0+bI5jL7
	L329EAMAXUo+B1xoPBJQd9BuuUYFgFJOj7g0Xtf34F1q4hAlY0JNFfh1iiwpZZNoicF
	8IlePMLeLDGjuON8E8gsjS424Zm2EwpfOpru6lkA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a5cef35e-f4fa43e3-c62c-45bb-91a9-360db55ccb39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ea7d8908de4bf638d12fe096847278e0722d3b369754c81b0116a524c6a1b27
Date: Mon, 27 Jun 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656344212
