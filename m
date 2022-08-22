Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73437363
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661157652;
	h=To:Subject:From:Message-Id:Date;
	bh=izTqLgcJn2/05dpNi+4941FulqRiBsMAwZqYEcFkJvo=;
	b=gWYwz0jFSE9JD4t/+Nw40S51NhWOSb7//KUkp+a8WF2OX8OG+d4BNmETuptgBFW4
	0P3b50zclmyKeo+5YBP+bvPKzwKOt2DV/Ay1SpfliHg6a8pyJvI9LoQB75ZmsYtlz2X
	y6ltWhK6g34PU36WU+k2dpyFThWmMvyrLafaVhEU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661157652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=izTqLgcJn2/05dpNi+4941FulqRiBsMAwZqYEcFkJvo=;
	b=BUIWKFQ2FHYB0pQi7ESfl0StFuSK6ywCE4wR3VEgcpujhjLlaj7VHQKQKTFDlS5a
	5sMXV+aQHCQwUi98ZxVHX9LGASffP/DJR4Es2joWnrdD3d6x/X/lugeaXBlR4w/i/z9
	0E/jRMe6YP30cr7nZmptg7X4gewfJLeE++Fo9aAg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c4b63883-dd8266ca-88ac-463d-8fad-0125bd1dda68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2287619c0cf41832da873aa4ec402e5cccc57e8facf11d7dcf8b89cbcf7d0d88
Date: Mon, 22 Aug 2022 08:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661157652
