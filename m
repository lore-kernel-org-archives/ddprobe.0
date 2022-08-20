Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7CD7B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661037652;
	h=To:Subject:From:Message-Id:Date;
	bh=ysh6h5R9z1evnxxkDFZqr4K+2PL7dXr0eIrBPyCx550=;
	b=BIpr1ZPpxs3SHWSs74/csxftFyFAMyYgHZD6JFZ/hms1cnNKMuhoObDMNoKPJJrn
	C71Sa3HBTOk4ifBbjsozWYuuiANIRApsbifKLnORFUhozUwNvvf9tZbyrp94gJJ75zI
	78FS0uyrJUXwnAK8BUXHxX6rSRv/ysKXXkAVSpq8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661037652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ysh6h5R9z1evnxxkDFZqr4K+2PL7dXr0eIrBPyCx550=;
	b=WiPdJqa5iF/2+Zbdr1Xpkv7gjPWAm/w0FDwOva7iQRWHgkLknJ9pOldB/NW7eddm
	3LW248+RQinTlhzs2TcO9TAUwSBS/Z3Wtw5wr96jnJGPhcW3gN9A5IROB5hllSkkqiR
	p2GgskdWRF0kDy8tIuLPRRBhzWzueMIF2O1jTmqs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bd8f2a86-84866d25-e6e6-4f5d-b3f3-a73d05229f98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e243b862bcb13e51d3f95bd1fdc40ac379050401c0ac23fd6f56bcc29ea05060
Date: Sat, 20 Aug 2022 23:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661037652
