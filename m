Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A517B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 08:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655628779;
	h=To:Subject:From:Message-Id:Date;
	bh=5LmDbIPBoWSz7xnGzBK5RNWe6l7cHQXQNoTmSDovZfo=;
	b=adlV30TJhWmPBnqFSCt1oR4eC/z2N/hdwxouY6xzsqpP1YXBfjGoRGZkPgmYoWTy
	v1ctWMJe7Ie9mrYSKur7lo+Qt89a+q5rwO+Hg4L8u6dqevMrf2Fmsl6RaPQ9+MEerrk
	C1+ytbwMX1SVlTorxydxj3gGlPDzv4XMPVPUys5Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655628779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5LmDbIPBoWSz7xnGzBK5RNWe6l7cHQXQNoTmSDovZfo=;
	b=jHEEBsh/bqkWQPDekM3GJSrOJQ/UF99oaigJudr/JqGVR9YuidZpw9n4ONRLuqPT
	DUWLtYfxgfVIpzwkA4Ux8Crw5r3SMakxOg2d+ATgFCKK+OlRK3Au9jJCs5BN6t6WlOV
	1tVh5pMGdkbRogeJZEsmjkSpEoZzpEsNghDUIZj4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817b2a4f14-e85fdfd3-3f02-4789-8d71-5ae53fbbc367-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f63217ba976d8731190917776c543f4b10fe086aae4e7b153f13810d6b3bca4f
Date: Sun, 19 Jun 2022 08:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655628779
