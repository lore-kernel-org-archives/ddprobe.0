Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5911146B7
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 19:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656357412;
	h=To:Subject:From:Message-Id:Date;
	bh=WC0pjqpjpGilAWgIea/O9GLApaeDNDon9UIvEN+lh18=;
	b=Yu2tWuYCSNfHN3RjalaXNBLVRUyUMV1TRvrdFoNdgxPavM7s0hgZSw3+iwVf02UN
	Pf8B5gvf3uMhizOva6/ysNb83J3TKVgCNhy8SJExly5Krf/24I/RwiIrdVoXJbpUooQ
	mm+dFKC6Sf+Wcq9aZYTjFN57alVHJznH1JjstomA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656357412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WC0pjqpjpGilAWgIea/O9GLApaeDNDon9UIvEN+lh18=;
	b=G2y0iF0F8u1x/6W1dlpFSdoii9llO8ZXFYPhUCHtpH8Sx+5uvRRbz4j6rsVrmXqr
	E10c3dfKw4hFGylZjy7yh2RVZ7XyPEp/qYiipIsx3zIzHLpfyCLoecRJX0pOxQLSVIz
	yXTLYcwLY2KAkOqcPYtMxUzc9z67Mw2/Oa4vkQs8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a6985dc5-a749c23a-0bc1-4c3a-93bb-7f0d15197058-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce548ec198e06327e68cb362fcc0159bd778dd18e7760d65ab5a22568b69abd0
Date: Mon, 27 Jun 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656357412
