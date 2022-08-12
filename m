Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C1020E4
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660321253;
	h=To:Subject:From:Message-Id:Date;
	bh=wf4UhA7WN3EZtuLTYn4Cvb7PVWIoJaa35pTqNbn4A6Y=;
	b=S0IyYO4LkNICX3bVDJ5cNEJAdTN3cGGknLRnX/x5FM4tiAIcuCKy5l1tPjj13o7Y
	1LiSLtZdzwasb+2FkDrCyiV7V4hKJr91I23tBgBy9Nqa+lSGxeVvLDgyWd74UqEg9Gq
	5MmIz4SxSxQLIOaHlx5HTO7cIJjvQru3c8op6r0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660321253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wf4UhA7WN3EZtuLTYn4Cvb7PVWIoJaa35pTqNbn4A6Y=;
	b=YceKR6YG7rtUz3/KmBRvYooAqw3hf8H1PJVsQZkmSAZ0FToQvNwKjp3D0vAv27bU
	3bnLCx7xIT09XuRA29Fs6CyeYmqXsZyL9wQDQVv5HlfFNWDnxaaRUiDjCcdw900z5f2
	V21lcd11NQuaZIvEwQQdn2CLGgRzl2eb0bLTfHiU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018292dbc530-a3bcd441-48bf-43c6-a208-2960b2b13612-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83dd5fc09625fa73d080aa7c6bfeec153defb8ac64aafe5939f3146f5507a7a3
Date: Fri, 12 Aug 2022 16:20:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660321252
