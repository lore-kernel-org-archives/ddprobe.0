Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3416E6AA3
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 23:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657582612;
	h=To:Subject:From:Message-Id:Date;
	bh=L2dbhPGiYshE2fPJQV3G4ynObCpZPZK9w4klAfxt+Nw=;
	b=KmpmiBuNR0HOfR7WVDZUXGT8O8Pt8wKNQjnIqIoKwPFHzGdB43fujS4OvwtTducl
	xHovU6w1SAUhmOVKjNYdVFxvAuu2X9RnLaOf6/5r+Y7aE/Fdd4/KUkJMp3wSNs+AhT1
	GxpEJ4LVs78gAtysaFWv7YqEyXzEp9eZiG0cJAiQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657582612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L2dbhPGiYshE2fPJQV3G4ynObCpZPZK9w4klAfxt+Nw=;
	b=X0B8k58A9E/ZuSGrTwMGHBmbhmbHHbbfWFHhCM461BfECKS9Z+lr56hMpoGQy+iy
	u2DNJJXQL66p5VVb3lfvV8nKk80kSBBsplPuHqqE/O3KUCrhLVLUod/QCMK1sHVtVUi
	FQZqg6zoByafZpdJ9KkkEPTwEzAZWBbO7vCYnq7A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ef9f6f23-a1fbc5d0-2baa-4d01-b341-320d7aca0288-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94db06f3aee9c9f58990a1fb77ca1dfb1a126f1f4ad100cd296d271194a28977
Date: Mon, 11 Jul 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657582612
