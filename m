Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4683810F5
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660540852;
	h=To:Subject:From:Message-Id:Date;
	bh=PGjoFqa2CVBAGHeHq4+8XtmydBy68mh5f+F851X0DIU=;
	b=NNYH8kkZY3trt1LpguMarpHw+FSP4D21OaT/s0t83MwNCMkry0jD9Pa3VYUhJvbP
	hNCKeq7KXs39SZ710xU9NX76IdN5USFhe0q95P4bHdkWm7sW79pOOAbP3rYJnR8msJ6
	tjxidJERMeaPGgU+N89/BDnZu0oVyyQKtin/BJhU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660540852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PGjoFqa2CVBAGHeHq4+8XtmydBy68mh5f+F851X0DIU=;
	b=HkwCizEErTnStxKBiw/pRxlQ5WIm+6JHQfdxYziQgBl2EW5lVOcMxwD4w1ndzhSH
	XVSH5SXL7+Cwo+cb/fQKEKXwpw2r9xqiDGhjZ/AmFKccgvJWtNkorQ6R93+wp0DD+8a
	qjnIn84JJtopwHbSAe+NQfOSG7ZAuXFXjWq7FTKM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829ff29947-9d05652e-dc3c-4b40-9f9b-4a2f90e3c31b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eedcc6e7a9ed7ec5fa8ae512c44601231725dbc9ce8b08a4da1e5e3d18924941
Date: Mon, 15 Aug 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660540852
