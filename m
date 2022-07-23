Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254347E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 17:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658597212;
	h=To:Subject:From:Message-Id:Date;
	bh=p9udKaj7IFCxNPkiKwUvh7iz2eWFNmkeQBR0tYAn6Gc=;
	b=F5ttOojn3iHOYSE0yleDoTgiVAT0hDly/3WlCZx+JMocVVVQUgptQ+Wl5lXf/65o
	1vviTKthY5mvnzc7KxkbVt6qptjKmV4WmkU0uSi9f7kQNydEvFXWnkI3ztPBaALyNdS
	CNJdrohV1aigafp/YlITjnwgsRnDCFHrtvfRWAVg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658597212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p9udKaj7IFCxNPkiKwUvh7iz2eWFNmkeQBR0tYAn6Gc=;
	b=hNhZeW4JntJflUWm5CRXHbIfqoFabyG2s3hCqaidwPko/obO4resyImfCUWY13iq
	5mSTQaqgaVlgRcvC5cGg3u8MZhb8ooZMGgOXD56QuBYlt6NDyF1fUWK71PArdYvZcBV
	PLuaRYhmwaH8DEeyoePk7uhtaZI/I6IP6TotEP0s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822c190091-62e5f697-6f6b-49c0-9eee-5639b1a0e3db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67a4e76e53f3381880bb347219f3c30832c1c7d510bb3e35ea6db70dc7e6e7d9
Date: Sat, 23 Jul 2022 17:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658597212
