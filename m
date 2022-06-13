Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0526F1119
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 10:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655115359;
	h=To:Subject:From:Message-Id:Date;
	bh=odNeSLJyCSPYpWLHrScwg1/CXA6BzFpNxRP/irP3Mlc=;
	b=V0LUZi6jg6IYfIp+ROVls8eYXRjlXvRFeoAPSuwckBWwFz+6xZyrruvvWuLLXV4u
	Q0UZOPBhbP2BqJpips1vBGz8quODytz/ELDTPq1u/ZrvxVcn3LEVv/+gszOM6mfMZ56
	o+009DSY7ulO0wj5VvFFz5T0U6duJk3L9WUdOeJc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655115359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=odNeSLJyCSPYpWLHrScwg1/CXA6BzFpNxRP/irP3Mlc=;
	b=kQEPxTiPmE7EJjZu/URxFVpTvKoP4PXsiaxiWovKOzRhZtMKYo9k6Nph/aSRRLtg
	HxFJVAcJJfsAprYsKEDhViRsiSU61Go983i5wNhSaj7f4hFEXZB3FV50AREshau86NS
	hBx0lq+CQev/0yWbpL3E9bwPmbVOR5yQed9aMZvU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815c902440-060e4f6e-064e-49b1-9fa1-b96c6dca3a31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25f6ba4d489ef86723b1de0e02efdd83903bcf359b561b46d2e8e1889b8e5c74
Date: Mon, 13 Jun 2022 10:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655115359
