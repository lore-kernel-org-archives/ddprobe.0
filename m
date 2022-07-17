Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB10865C
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 05:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658036212;
	h=To:Subject:From:Message-Id:Date;
	bh=vw1neX1SHsL1IuwQ21oar/l3+b7gXtuD5ZME3ckOGGc=;
	b=eHtJirxLAJb8y00sk+I6u49+wRvTNp+jCKoVk9KU5HyTgCodlMSXikkYpebyEQbT
	Ow3SEFNAaIGFceTklHtiZ5dVtFmXcmtx11qFCpl+aE/5dgeht/SvfnF2HNH6C7Yi7hB
	g793G11hhOd6zCBDr5lhtZTOVYmbccUcY9K6ihRc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658036212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vw1neX1SHsL1IuwQ21oar/l3+b7gXtuD5ZME3ckOGGc=;
	b=Im2/prk+fsCXBDCx3qFJ/YWU5A63MxPK7c2MqNVbpk2YMh1/6Q3Q95XIzNHtbWlg
	k+V9f9RfRECQHpnGRtYgYq2TUnsw0rbbxh7ZX8XweG0cCbodtJSBjvV384ogmgYTQ1d
	JDjrykDpuP8+m5U9OT1j1hhwXR1DnbgLXZmrEZj0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820aa8d24f-db508f62-cddd-44f6-9f36-a19d9a16294b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c32ef969f41329bebbd46eb797d4b75b6dcacdb2fb2f1da73654e55ed7bdac0d
Date: Sun, 17 Jul 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658036212
