Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567247F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 05:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654580459;
	h=To:Subject:From:Message-Id:Date;
	bh=7usxa7HOCMLkXS6QPbgE7czjIMLgZQB0OKHPU6GtMno=;
	b=H77gmdYbJj3yW2gGlYXJVSeC6qb/CbJ/OpGL2NfOO/f4CD56j9fQaGqpi34BWLKF
	eOI597mTGOFDhp6vpSl7qCLJDtWdGA7giTw++n4P5PrJ8/sK33CZ07w9mkO1CHRGiYG
	PVkWpI7nXjMqqGH+VLcuMZioPe9urkgwuTI3lgc4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654580459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7usxa7HOCMLkXS6QPbgE7czjIMLgZQB0OKHPU6GtMno=;
	b=fZgmTkrnKYJ7jIqDdCeCiwoCs7j4LpKxGHO35IrJ4F2RjLf48oyXhlqkLcEim2yQ
	ZkTxQ1VcZ7SgsBkq+Zm++WcTeWTIPXY0zOZbGdaJ1Dn67//vQP6KMvKDzXDNQELTyA1
	NkcHvORoHSPulL9fO4pgldOjoCzUTrIDFdX62sY4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813cae371d-899a78f4-442e-4567-8e27-71ad090a9e9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 778020f839ff214161d9d4bf1d7999b108f4b056d1e879caa5b00a598bf40d5e
Date: Tue, 7 Jun 2022 05:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654580459
