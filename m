Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26A3136F
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 21:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651957798;
	h=To:Subject:From:Message-Id:Date;
	bh=lXpAZ0sBHR6yNtBfZ1KAwqWQaXugRAMIwFN6mxJt6yQ=;
	b=f67O+IBWp2Y/7UtiMtA7ioZ7MUffJHyOLgjdekFnHm4FkYeGsK0oaIIRAsryX5Oy
	+TUoK9GQJfrie/gZzO7PorK1Phrq9CvMM+AUaRlZQnswrkKbD0eawiZae5hczb4vvPb
	ah48trvmhK93V+9Y6JQYSqb3M03BPcRF1nSbYQ68=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651957798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lXpAZ0sBHR6yNtBfZ1KAwqWQaXugRAMIwFN6mxJt6yQ=;
	b=gB1E8EicdlHUWG3MpglJ6RVJ6F77BpAbd6/avpp+iag1VLkNs0Vs2de/qFG1lLlE
	dflgM7vXqwF/jfCyM1RAWIYEP0oYzANRdz5mrMd0phs5/DNKqpjY9RP5JdHZwUQzfwr
	4dhfu8H/869/TI3TxI4ppLCg/4zxHNJZBJaplJN4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a05b9597-4c3926fb-ce7d-4cf9-9fa1-d62a2d190309-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7f7dc9424700a748e00914b7add519c4a7fc44e718a7b880105b2180ee76479
Date: Sat, 7 May 2022 21:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651957798
