Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388841844
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 18:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657997812;
	h=To:Subject:From:Message-Id:Date;
	bh=1Zbt1lVAivabFSnTWACKEUQBUlxjNbHC10+TMrIplbc=;
	b=ZOWsZ3tT9OQJwB7+Gi0uNvepUpZFSZkRwAfPt4hUU9TbG2FLYWFFvbsVuQxG3WYm
	axdCrIlr7ta4aS16fxoPz4ce57I03mpHN3jqwRqNHC3XNh8ESKwaAIWocRth706DKpq
	Ls1/L13vfXV5r05GScV7OtUcKfrE0O0VCMQTqsM8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657997812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1Zbt1lVAivabFSnTWACKEUQBUlxjNbHC10+TMrIplbc=;
	b=ao4c7no0m0/S7jSdalxExh/6YKO2IMjOyD8NVwcQWQdFOBTM4Nd/AY9N+AK4PARj
	nMvNGFytcrr/GKaxfdhBmC8X/Bm8nDmoGlix8xkqimM49hjE/wbne+q44t14n3d6z1f
	gLTO3OoqsUbjAMd7sSsCqELSQJnyGnZQ/I0VDnvc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182085ee26f-697d051e-0efe-4b19-a891-fa5c1a46c678-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6836eb62d3ffa493b31c0d292d75fd7a4d2679dd752b60b5aea90df3c968ea09
Date: Sat, 16 Jul 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657997812
