Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3BAC23BB
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659969053;
	h=To:Subject:From:Message-Id:Date;
	bh=n1hbjUvm73jXA1tGTD7YF1x3GdBd3H0IuCTNfB5VKZY=;
	b=QSZfS2n0715/c9hPUcWXHXzj515BtNNoaeipewJHjzBlGiiT4eZP/unj+aCHplv3
	lQiQuxWikJLymNW/DnHRBQ7EeA7irJx7yP9nznQ8hhi0IPg4XsZ+yEQe//J2Dg373t0
	EQArtZem6n/kCjYFI8CDAcBiQO4bjHaVB5+tJ76o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659969053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n1hbjUvm73jXA1tGTD7YF1x3GdBd3H0IuCTNfB5VKZY=;
	b=fAcq/HEwSYo0ERxXk+zpaIwqF/6dPYLjTgJLToutTB0a1tzloWI/dzk3hOmUAoEn
	Z73QfjytgB0Q0g5W2KeepcdCvH/0uG+xBm7YIubMlIc1vL1qhOPYqk8CXV9srTj/tTq
	r7TBZNpODxeOUy0uliUXo120Gy50JVNBjfz/fa1k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827ddd9fca-43dce907-fab2-42ef-9071-61b109f6857f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfdb961fcf19622ef03c0987bdba43cc664f25ddc18f37b0cb505c9a93245ce5
Date: Mon, 8 Aug 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659969052
