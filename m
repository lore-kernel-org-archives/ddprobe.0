Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41C72575
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 12:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656507412;
	h=To:Subject:From:Message-Id:Date;
	bh=8zaCE33l5Q4llF8JVwWStq++i0mExAbAHoWT5tFW+Hc=;
	b=eVdchCBDYTGucJ5jQhRMGOGKNdKFPdWjJB2N8fL1z8MNosFtUdYv7eFt6wEhEH+s
	4onOqD7twdkZy03/zP/ZTKw1nHj0Sb2FQsj3do2IDQ1PmOlTsggdUvYOEZemqmDDqHX
	c3sVZz9+oyaSiOZB1SmbfhEmATl+TUfP+9k6ZkTc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656507412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8zaCE33l5Q4llF8JVwWStq++i0mExAbAHoWT5tFW+Hc=;
	b=feGW3d3xgC2EtEOhVQ0f7vvfnQR+9xJB9XsB/CdQ/sSyDPZ+m7uDppoRp0cu6ERv
	E6NgNBvcGoeAyqqiqbBwxQ1CGLPQA7Ecoyjs/Z0qeOQDZ7YnHcVLxVkTl/zaQq3cRBI
	Rr3+G5A/aBXyE8AW8Xp1qJvFrz/PPPYL+pcVsFcs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181af892f2f-808aa8f8-f398-4cf0-9abe-81e9b30af22c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6a2dffdf47283108b9d35a3b8519d13003ae09028dff4e80f0a1c3d1a7802d7
Date: Wed, 29 Jun 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656507412
