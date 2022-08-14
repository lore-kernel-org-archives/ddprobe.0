Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60EA6A3F
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660455652;
	h=To:Subject:From:Message-Id:Date;
	bh=9sXws9mUlmpKKu/vcrkBqm5cnI+QnW86GahtGxVUYOs=;
	b=McXPgYtOJ3c0T/N67H4QBEseoPIggqULxokAd3aBpINKXk4n1+MVqEg5j71UwQ98
	jZdAhdP3Pya7Mn4s66vq0jMZkF0XTxJZxb/IIB+8GiGu5qKCs9AzRhNTO2fM8M/n0i1
	RS3m5gas1GFxtm1dQvbwA+L32i3RdHvw5nWMZzwk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660455652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9sXws9mUlmpKKu/vcrkBqm5cnI+QnW86GahtGxVUYOs=;
	b=T+0Pg01NASYqysmOIj5Rj/KkZ+aMKvxxhfsLIXUoELGuPjU28nv78RO42/Md/8ci
	ond4YPYjPtVANDfhUc/JWivVf/DBh8mdlaoYgCFhDdQVKkeJvpuoldG1YgcC4/uF3vz
	eoebaX6AZqJt+JM3RIWzmqVi/AQFp7+Tm7ZoKnAg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829ade8cd9-beb385ba-f277-45df-9b52-f603a3a8015f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c42dfa3143e3801d029d50a0576304bcc19ca4403c518c70af6b07486322a361
Date: Sun, 14 Aug 2022 05:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660455652
