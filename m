Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B2210F6
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658984452;
	h=To:Subject:From:Message-Id:Date;
	bh=GfhKlOJdLPTpdPNO4UVO1z1e/dWD+iEQdU3TnvXzUDo=;
	b=H1ZYXY3bZ/Ku6VD+nv9MTocXlHnvZiz+Tb+korijjIVfnlD12/sAtLlMLBgb5J/d
	An08QaNoINbbkqjYdYFTvKJTNrAnIfErXbN/1+JGo7Ks+I4/82bIDvNKuAVgRfj91WZ
	bJ9VYCuOZBSp3xcIJymXwhUJMvXjnJNFRl9yIXWM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658984452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GfhKlOJdLPTpdPNO4UVO1z1e/dWD+iEQdU3TnvXzUDo=;
	b=kN9YUOipYyCLBNR/4tMGAuDmJv/VDZp/X/oMcADCziQ09RcDlg2KVczGvjijEJGU
	BUzNjbV9zDYeEvYeVCcuuF8XSu7xpPaZsHsPNHOqVq67NcQXu3FI9Qcxf+J0eHHuCwq
	sWUqKmlYr/DUYxjeTLPy/QXKwDuVqD7ONv3CrprE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182432dd202-7ade34e9-84e0-40c5-98f0-7af81808b24f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74cfc5c3ab76d10d9915a6d3e99e1135f8203ffb72fa37f2c3f28694dc076c3d
Date: Thu, 28 Jul 2022 05:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658984452
