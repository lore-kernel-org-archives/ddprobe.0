Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4B37B
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 16:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650124858;
	h=To:Subject:From:Message-Id:Date;
	bh=edthwfOlnt6rp8GjmWj5wJXzlPDpUCAU/Murb9QLhPY=;
	b=JsArZfbE+A5BRxlf9QinVotXPdTcfnYj0SX+/QRkjF7+LCjYWuW7DLNOFm7/XXLL
	8wABISU2RSNXbxtsk0NI61tEaKzkWSQGJtzhuBnx95SKKsd8CiaGDYNql0MO/Wsuwpq
	ofgth+00Nx/0cG2VJi7jLnPtT1UX3Mw11bgBRKWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650124858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=edthwfOlnt6rp8GjmWj5wJXzlPDpUCAU/Murb9QLhPY=;
	b=RPvA+b0pF2uG47jVKP3UjgpoIp6sxrnDKmB9sEO5yDEHD+KBc7MINM3QLRyq06in
	ZeRDFNdK0v23Mjz/CIRD0VC60qXNhUrPilm0yVxJiorP96zDPFNvh4kMslmsAD1zAVO
	9X6dmeM/WG1xPqVPw5PZvsMN0E0gXlvybwgByYII=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180331b23cd-61ac050b-00cd-413c-9225-864f6599741a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d821182c7d4b0e027dd63d3b85389e66905837e5fb90584120f8f92cddde7ab6
Date: Sat, 16 Apr 2022 16:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650124858
