Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A5115A7
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 03:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656129412;
	h=To:Subject:From:Message-Id:Date;
	bh=LmZ766EwPiBW0825QcntOWTH5GMLZkVk6sVxunv+UxU=;
	b=Cy+iIj2kEBbCEqfWSl13uUaKEEh0bpUpDd66rjhKmjH9Pm8ntA93hprp37j+qdZr
	uTDNTpr5TdQu2DpBF7viQX/4No/qZFjwj8ts0+eDOHCfW9stwxe/UW8MALmMUWKhbjf
	N9BysaH0j2ZbNCxnT+bn5CVRYITpbkFX95VeI7DM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656129412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LmZ766EwPiBW0825QcntOWTH5GMLZkVk6sVxunv+UxU=;
	b=Qo084drw2yMc/lp8MgRljIV93pc/Las3lb3sEpHz1bSS0cqh0OlTimnRCDkIrmQU
	VfHFZ+odh1BjGn+tpuUbyuSXC+Rfy5wVf4AoDguRgx6YYKzFxOx3G+V5dWusphoBqqe
	YhtHhk4J7Hl8VW7YzHJRDvltNH2BAPI1r/8Jm0rU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018199015cea-94080497-0fba-4917-ade5-e6ea008931e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e237ab1cd215727f594bdc083a3981bc6c49b746559dc76e975a42ea8b57073e
Date: Sat, 25 Jun 2022 03:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656129412
