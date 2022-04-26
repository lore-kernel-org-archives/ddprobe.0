Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0DE7E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 18:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650998518;
	h=To:Subject:From:Message-Id:Date;
	bh=qf+Y3eqnEbREr8xaNQOXy4qfIPkzOTJMUbLqeXPT17M=;
	b=go/rjEPnBYXhxHOXUTsWoOhXkLZPF4iioSYsXcOaOJdeu6LXBPGBLcTvySCccF14
	kb+QlmCmW/i2Nsc9agVhAW5jsD6ZqKUNqcCptDKiqydlJj/dEdVSlo4DqfRM+2cFXBR
	XQNvRFpaUGQzBaXCpsbnqoPoqkFwjvKa9cQzEbuY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650998518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qf+Y3eqnEbREr8xaNQOXy4qfIPkzOTJMUbLqeXPT17M=;
	b=MSTsggfcU2flqoFd/pLnUOR/YSohtMNJ09pD9giQ0VtjPJYV9MOol0pKm+o9dK/l
	+EJuOvt7mm6w/W+lwDA5kyiddxBJ1Dw9SY5Ax5qK6RBVYlF6XKl76wBrbl/eRRoyVUQ
	jqt6zM0z+80L7H86GAd7hs8yxGGl0bBXc34jujVw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180672e2225-b7421bad-6593-4a97-91bd-3b7363f4aade-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0426f45e0bf91f3668cdf07a12f07f76b2797142f8d15f9ec477a9c684638d00
Date: Tue, 26 Apr 2022 18:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650998518
