Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACE1EA9
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 02:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652754719;
	h=To:Subject:From:Message-Id:Date;
	bh=8yGB/jBX2oUBuIMlmsXnfnxywDdjIR8gIPj5ofHumlQ=;
	b=kAhUlDvvw44UvM3/jUkvDV6ONXF6MaNHNCWqZ9W/8P5s8YhkJY7gCAuOSk+8VzSr
	2Ga9kTEM/NaMXkKnJqW+v+cuNgbybKcKV+Xu9vWvGWvq7uLQ+4NvdbnH6TLfkNEFif2
	93X8eTbNkput1+aYpkfOsdEIg86WZ8fgwg5a04vc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652754719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8yGB/jBX2oUBuIMlmsXnfnxywDdjIR8gIPj5ofHumlQ=;
	b=g616McHd85mMj+41TPV8h2qFXW/cphALQrVhQWkLShzUyZyFY8g94s0M4pb4+gR6
	0vS/pm4zlCqy/Eu5t2UVdz7luk+AaFE+6OwRKg6pcF2otDOdXdvk19EgSB6Zuakh15T
	lmsskaV1T3eR230V6qzvvC1sVSRDUPuuqbWAaLx0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cfdba238-d872659d-13c8-48e4-8acf-f3f3e7e72c1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3784e0e1baa702e30dd9610b299d2664a6e966eb0814cf36624f3c500ef34b10
Date: Tue, 17 May 2022 02:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652754719
