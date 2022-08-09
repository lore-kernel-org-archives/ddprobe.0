Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4330F4428
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660058452;
	h=To:Subject:From:Message-Id:Date;
	bh=AvAKG3gQ0yp4sf0nzrmlS84KZvw5MEs8pjtVRkthYxU=;
	b=IpQE1VnhFfhZQprPgl0wG1mzXXfyNu1hLaRCJGPp78UQm3ZNC8ncqaMHeeKFA01W
	H4ej8xNTmZvPaIFSPwdh8XPazRS4kIU1OeDSSDdywoIx6DLGj7bG1rQF6CcOlvOAhQe
	Dkkm/jzpRx4/ol+dkLodHNVBBOEKu5Y/aTi4Q/QQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660058452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AvAKG3gQ0yp4sf0nzrmlS84KZvw5MEs8pjtVRkthYxU=;
	b=BqGPRGV2q+lrMEhx4pPi1hiGO23L22C1qA1wLBjqNqKZ6ziCzC3kd6/02yxI6iJB
	UDJwa6dgCjoQHPCNFFfexBMOxC5JYcMghPaBRGDB5V4ZLF5Joaq6BI4nVKACHYnYLAk
	eR4mPyv0rh3SwwdXDaR/6rrXFlOyDIfQL3M4SUlM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828331c241-2788e0c5-3f09-41b1-8a20-e7caa157ae62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bdae204aa8ed922ae7dcbcf6738024f2c9cc555c1f117d6fc08a1caf79e6818
Date: Tue, 9 Aug 2022 15:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660058452
