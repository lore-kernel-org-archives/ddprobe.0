Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BBA7C
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 05:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653630959;
	h=To:Subject:From:Message-Id:Date;
	bh=kHhj4G3ZssJXnEVRbFk43tI+ZhlD1pkeaMmGx7IvRmM=;
	b=g39jDax/UWXYKMfjkF+JYcWBC90kG8hzKkr7V1vDfy3VjDsHjdWMAqEo2wAdiPq+
	/ZudOkxAQyhntKbC+6uvM/qxEGleEgc91eCOLxJ/aDEcPgmt2J0XJx4mWnrN+qZ5sd2
	xEukwuq0xSSzrMKrUFbG5NigVXFh0awZyLNiCVlE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653630959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kHhj4G3ZssJXnEVRbFk43tI+ZhlD1pkeaMmGx7IvRmM=;
	b=ImJA7eIKARNDaW4oyi1T19j2nw6JYauAE5kLQK23CT1+Hg1z0sEsNs/CTapNAra7
	b4bPeTM6KhxBx2c+kqTxaOGy7EYf1b7RlJCfRgNK1J555qHNYdBVaJh9A6fknCkJTbq
	DjHXBryp8wbu/dsJTTgt1lZ2ZUkVR5JwRD25DPrE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810415fe98-66cc71d3-12c2-456c-a6d2-a29da714d080-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee4f4ac7b7e8873c9c930b10c19cbded944733ddc699ecd1f09347afeedf9afe
Date: Fri, 27 May 2022 05:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653630959
