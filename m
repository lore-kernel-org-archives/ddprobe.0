Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A8A1623
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 03:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652586120;
	h=To:Subject:From:Message-Id:Date;
	bh=2ZZkpx7rryYaUW9tk1IXCfeI5dVOQoRrokadanvw7fg=;
	b=TpB/JcYWcFFf2k4elO0OTYxVBngwlbmOI9GNh8EeNKYhImq/nWlOyIOsTC27skpt
	vfK9PDjTCG6oq2ma4oAUvBzuwYbE7VbEZu32fb+P3ibnBERHFNekXGpuPXOigNRBbnz
	xGdpEG/tQAWXsxSdJypDfPMJBcyslpRTB7vxBRkY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652586120;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2ZZkpx7rryYaUW9tk1IXCfeI5dVOQoRrokadanvw7fg=;
	b=K6f8Exp0LVdKazl5Rfp6znS9dlwzqOfXh/8O5N+stnlMQbTFvCr+BEpMLF+omsRO
	66bnH0iP4lsmwNlY0Q3BkrgarXrb3xoq0TcaFfBkUS5+rVBvVNFEVmkb6MGbQJ8JPxn
	kbpr5HDW8Rr1/D+Nq+SsTuINFFMI4rv3MT2sB31g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c5cf0047-e799e198-bda4-4cdf-a4c2-3871c2204b3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c80e60b9b7625ad5316bf5b3f1d5719833ca1e3e04c93da091141d0100e61d6
Date: Sun, 15 May 2022 03:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652586119
