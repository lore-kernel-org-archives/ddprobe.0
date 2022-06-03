Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058AD1386
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 20:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654286699;
	h=To:Subject:From:Message-Id:Date;
	bh=EDPmo8nvH2N+YATD0rM+Zq0cEEXiHRDVzXlN3bPr8ZU=;
	b=XRhkCLif/k7gcRd+BP6FCk4mNIPrVlUu0yikWcLVfYDqVoLD+iZVvH3qeMrusw04
	iAEyK3LOnuBBdiqJ/VCx8rfm+9u4Ufg8TFzXlJgFI75nanA0FF1BdDuq+UN1n65kqat
	AcQfHTGrECwNVi5bYs9MuOc5jUSilyiC0hPbQVJo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654286699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EDPmo8nvH2N+YATD0rM+Zq0cEEXiHRDVzXlN3bPr8ZU=;
	b=HNcU4WGCtDValm/jIxt0kxYEYe2rvN8yX66Zx97hMIve+AbFCYyEDtxqnkZ/s1U/
	vnuSjpOwILbFPajmo6oR7jyMK3iaUwX3/DRlkgDRrJhOSm8rmZ6AxkGCIOQAs2TZLGa
	6u06u/R7dVmz8uRITNfhXJfMWBhfQwH6KYGXt2T4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812b2bcaf9-c249d697-7e7c-4e53-ab7e-ca377e2bf7d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e941c9a250260c077b230615125630ad8b43028ad643d5991ed6a3d8a601a3e
Date: Fri, 3 Jun 2022 20:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654286699
