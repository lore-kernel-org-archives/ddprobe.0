Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2069F2F48
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 21:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649452378;
	h=To:Subject:From:Message-Id:Date;
	bh=vkdWHLCBOOCE9liUSHWjksPfifXR0NHJXFOouyoZwBw=;
	b=GQWklhHKcCe85mbHlaJxoZahCn7/aqxqL959QBcKY6E4eNFoM8XFxAQO51Cls5o4
	v3C7jbsJfJ/3SmM1rD01d9r39fZQwyRYkuKGFb1h+PiHn+HDczOlNScFrQhIXI4NFPs
	B40kC3pN41DTVTcTr9hPYABs48bxOz9wfi1TVxCs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649452378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vkdWHLCBOOCE9liUSHWjksPfifXR0NHJXFOouyoZwBw=;
	b=AEO+icoLwaJTKeLIiQxTEFy6LDvT6DGyqDeKZONYmNYSZ3oWtjWJyGAiNNFqneiw
	jMHNIJEsoCQKz4AFJ+fgqBe/HV+U5Nh6IAAaJJx1MW+Kva7dQMYtAfQ8aA/YFz3FD4n
	NsMhsTvo/4IHHnGPP5krL4Bt97jVIj6GirCD47iU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800b05e8c7-ff68e49e-8963-4358-b0d0-5b678042f5e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d64847ad759ac92f4a12bf083741653c0447730eadb5d05f2a7e0d02e66ba5f
Date: Fri, 8 Apr 2022 21:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649452378
