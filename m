Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263BA469B
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 18:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657650412;
	h=To:Subject:From:Message-Id:Date;
	bh=w6N5OcS2H4pFOZ0QPykrHQnbA78m/nplstP+cVZWJzg=;
	b=iblNCH66eypQW5Bi63H4j7pwV74ZtAv3v1HcFxYr0GSavP8q9hZJnZkyVrh3rd6t
	2WYKITPwEw8rFBA8gEXcPY3t0gUU6G7eoseDNunyacn5SEZQPUztVJNRlqqSo/50B92
	OY5AozEWKWUR5CPaFP0r1nTuzIh1zlU3eCx+/pj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657650412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w6N5OcS2H4pFOZ0QPykrHQnbA78m/nplstP+cVZWJzg=;
	b=DJ9omuAnck8x4Y0O9GWZNVfnVvPpZ0yI8MXok7IMJ0UVc87Z8QhUrVH6XSJ/+09h
	DF4HV6bQQcbZxxrtzHIaVxjOzrpm6Jj3ns4hPj+FKf3goBoIxDuk42XpR2RYpJkDl0J
	JvXgqtxa69Fy6F7CWdUFofQqg7M0ptuBTS5NToDs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f3a9fb03-f867f663-8627-4341-9e64-415804fac6ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f12a9bc4318efb0a18ece3e280d2c0ade68785ba1d3190b81d1414adfc8e333
Date: Tue, 12 Jul 2022 18:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657650412
