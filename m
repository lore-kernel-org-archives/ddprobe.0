Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C09BA23
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 23:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647214285;
	h=To:Subject:From:Message-Id:Date;
	bh=THH0qXWqTittT61Ey3Nu0VwzF4PQ2ZZDfiVQ7U6l3PY=;
	b=jyDPL6wE/583KZEcrWikCdXKyCmMB7NyVjbXHuGFO6GSwYVSVmecTB8M3DAjzMOA
	7RwMr+5yuBSDKR0Ipnd9Sa/quniljY2cUXzxC6P2sExLnQMTKj1GHPYoGREoGikqdbu
	R4nuqQQAJqENz+qvh2nmy4ipiyMPzNM8ssM4JHb8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647214285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=THH0qXWqTittT61Ey3Nu0VwzF4PQ2ZZDfiVQ7U6l3PY=;
	b=DYBmScblxDxdp8XIpMKkO85Ladgrx2LQFpKzdRSotJ8enP+GjsAVaKCSy582rj1a
	Ews27JxqJkyLUg5FjtqXBWo6aA+VwBmFbdPcJwo3DSr49RKJPAKTOoS0Q/s5R6EeUfN
	WyPQu+yNTmIqRGIpzuGVVM7hFyuVfhp1eXhGjw+M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f859f505a-58554dd5-073b-4c1a-ab08-ba80e15cbf56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90bb51dd954cb6139381ebaeb20b32be5abab5f9f96592c235b6a3fa1cc3da84
Date: Sun, 13 Mar 2022 23:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647214284
