Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CFCE28F3
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 21:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649108818;
	h=To:Subject:From:Message-Id:Date;
	bh=0wFX0Vr+SaMJ0qWY0ZKUhd1iYvIwbWC1cKuaGPxvS5g=;
	b=hVPJQfBXceu/jXZsTcFH8htvkJT6D7uwI+vNDm0Ujj15wZCyyW8/lNvugWQ9jpHe
	5u7f+iEHN7djqNz5pGaVhqk0ZcRzi6y7w7zv+saTmO+E3chD41Wj8+46EZXQIGTcoDj
	vRw/9PUCAFJcpN+R5o58M2F17oqkG3Jr5Zrbjtvc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649108818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0wFX0Vr+SaMJ0qWY0ZKUhd1iYvIwbWC1cKuaGPxvS5g=;
	b=IM2rLazalFBcnqSltPcRFfZf/bdxv78vrgykHbdqyru3n/ZPXbbAIF2uUTuphl6I
	TiYyMXLtlVuZXdTJCmMTjpyewPnKkCllPXaTkvXHTL8GFINY/lGaWMF58eeI9C77cr5
	S9cM94NX0OBHHTHid/fpeQPa9fcj6PKpt1o714wM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff68b9964-41cf57ab-0909-49b6-a32e-456e9a3674d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cdc29d3934f6485e26826ff200620be4849ecf6bf67878fe5d135f8dba77e40c
Date: Mon, 4 Apr 2022 21:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649108818
