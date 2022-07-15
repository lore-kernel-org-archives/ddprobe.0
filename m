Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175F220E0
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 08:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657873012;
	h=To:Subject:From:Message-Id:Date;
	bh=yo2lyNqBLfOujIneoHGq9YTeBY8I1uF8mtDdJHcdU/U=;
	b=SNvRLW13vW91dpKW0ecaPGN/JMSOgbQ0/YJTqKCPkH0mIinAtaFIgwoRHx2U3/uO
	7XEXNsB35xqqc366PNFpuXjMyRJmht/f+L8sVftX6T+vIwWnWCE8tWh+Cm/4XBjyrSY
	hlwXhC6TBGG2ksb0yXQOHe+hLG65LjDM+U+N5sDk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657873012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yo2lyNqBLfOujIneoHGq9YTeBY8I1uF8mtDdJHcdU/U=;
	b=BBcwFE60ZLEve1WryJzIoug6HodmuozdWjzSo8Gla8U2PvLy+GS9DmolY41HNr/+
	gB9loMUCx96Dl0iu8Nr/cjaXroyJSrkQjBdNECaOWvAmMgdeKUyWAlp7FBAOvE3VksY
	0ktPKvo1ma0ZIrth22/TVh2T1z1rEej1C+GbnIlY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018200ee9627-dcd408e3-59e6-4c97-b2f3-3d61b855fd6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c29ed81832727c12484860a0f80200e3077b2126a884bf50229c6129a6c73f4
Date: Fri, 15 Jul 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657873012
