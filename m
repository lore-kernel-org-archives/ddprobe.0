Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3456A4A3B
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661203252;
	h=To:Subject:From:Message-Id:Date;
	bh=+UtVvrvWzogL2g1vYsemLqHWlp5GJ22/p7mAIB5tHdE=;
	b=OYZkJHaHx4I5O3xJvjDQgsYvTHkHQXmqKPOjaMT8qXp/ZJVNEWVaiY4li8cRZ5eP
	6GsHHPCwwk6I0IJddMdgX4E3FYCY2aj1drMHLYfl2vEieVusoKqJDlOfEIKORvo1Q94
	9PhL6aFituiKnR9iB4qIB7FP3BEA5jwOROnVj8Ws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661203252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+UtVvrvWzogL2g1vYsemLqHWlp5GJ22/p7mAIB5tHdE=;
	b=V2yb9huctfJ4kYG2mOyTSLd73yI9PHUq4zM99dn+MyAhuSJOWlzWm4/kJXet6OSs
	dkqJEYsnQfgOYT0Ai/vDVzRMhuYhoVJUWHhVVAkVbkNDNCRMsSVFyEIeQXYL8LNq1sj
	jdPhYAyT1vQ+qATN2p1h6fbeq8euJ5JDGlgcFOqg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c76e0557-d3cb3e59-ff44-433b-83e1-a6d797251091-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 687cf9656c83e6c2fcca382b5bbe38ec456e65dbcf3f3e9d829a6b6acd3da008
Date: Mon, 22 Aug 2022 21:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661203252
