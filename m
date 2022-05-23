Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4FE36E
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 02:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653272759;
	h=To:Subject:From:Message-Id:Date;
	bh=vOPRbfr5MpRUP9jxLeRGuDO/f5pYQrb5HN61DIi2LU4=;
	b=D9w7hNhgQOn9yaPHxL44KzbakHCPi9pgu+DB1tCLLY2rL0XOWHLWuaddWyKvKH9F
	7BKL2FewMUCekO0mRzQmz5ALxIUcv+XAni5lmeJbCEWZ2bhkYdJzCTN91usajUy+TmI
	9ATCAULyLFu5W6B386LoSTlo5AcT0DFV59ckPM+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653272759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vOPRbfr5MpRUP9jxLeRGuDO/f5pYQrb5HN61DIi2LU4=;
	b=MB5CwIAtTaetgTLBxA9gf4fyQW0Y0uvoTbzqV31uwdhVc1ewrKGltRLoVynJNrsj
	dFovAlr+r9m3+BZA49zMZ0oFeuWNMbCAovbCh+FsnaTsRtQemgWBjqw2mIdTB2lSdO/
	sVIVWPbZ7Q7fNhMlig1l7CeWRRvHpeokn3oUU1PY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180eebc4bc9-b09538a8-aae5-42b3-9393-cb346faf67d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aef8652de5c98eefdec4b378a8687e14d574866e23d6c8587ec18ef17a4d9021
Date: Mon, 23 May 2022 02:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653272759
