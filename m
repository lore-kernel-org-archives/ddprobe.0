Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC1E10F8
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 12:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657456612;
	h=To:Subject:From:Message-Id:Date;
	bh=SMY5kXHPNbq/RsRnGHGnbQEmit2KvIpBTHP5lsvWlxg=;
	b=J3JTRfNexEhSEYvso4dh3ygH/KqtCrcB2W2pCcb97t71POilknhKztmwGD6Kx54j
	7Sc1dvMqGLIoXQZYRcITfW1vbzwnOg4yKwFa8ehgpflJZeKd+kWIlrgl5FJKVq9j3Np
	OEO3JJazZ3OsbIvI+a54MGJjJyfTjPCS9U9GQZTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657456612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SMY5kXHPNbq/RsRnGHGnbQEmit2KvIpBTHP5lsvWlxg=;
	b=ZDQ1bhsYXribiLpy35z4u44bVlyVvX9Ajiqg1friHSUEhGlScQb9+L38+Heqwimu
	Fh7RhQC7IWCGRuAuFXwCKutE+tUX+9O9LtTtJDz6IRfOa0YBRdP07av4wAwO07jEHUJ
	lzTB6OjZVMUOtzHBQPxzY8a6H0nEQkzwqv8I4rgs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e81cd437-a13c84e5-e2ae-4d95-81a1-8532eb348a46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a9d7c741ad8ae967330dfbbf52b5b5ef08e631f6cf08c7e10130217ecb2f413
Date: Sun, 10 Jul 2022 12:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657456612
