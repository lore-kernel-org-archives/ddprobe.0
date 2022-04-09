Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6559A47
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 20:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649535358;
	h=To:Subject:From:Message-Id:Date;
	bh=m8wNpXsd3L1LA5nOFvWfDWYfQ4l03aSQdlqTCUKti54=;
	b=h/jOZxTK0NUyHOZ1zPDtgAKCWz0K0/uIVyhp/higvBuEWSSqL2kwvJPw+CsJlA+R
	GkxQNmC8AzIA9c+H6PAHaahK2QfqnIz3Trjy9zUEKV1XIFEA+35H2tfKqdt0O/3pDCu
	eeTimoV0J1DJby3z2417aWzg5xT65du9yECC1LTw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649535358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m8wNpXsd3L1LA5nOFvWfDWYfQ4l03aSQdlqTCUKti54=;
	b=PmzeLnZB49aZMW3G4xRXFGs5MTPzIyz8IJ89xQ5TWVp1Wz4YwqZzSWHWELABufgv
	5EFQN3eRxaGXUvApNaeZDY0gLXPDzIEYFCDlnGv8B62/qfLJzH1eJKB/AvjtULnf5og
	b9KPecAmDflEA4wWfov6TQ+OQUwRUcDsxm9hfaXI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800ff8157e-b61ae56a-2ce4-4e1c-ba90-bfdca667c0e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9402ccf7906b1536d8ca63bbbc7002f2ac3bd77e57eda2dd36ef0ae69ee96043
Date: Sat, 9 Apr 2022 20:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649535358
