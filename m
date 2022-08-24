Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52889671A
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661365252;
	h=To:Subject:From:Message-Id:Date;
	bh=PLGFI2pZXBFJiZb0e1kAMmXteoeZmIWy1UzfzJRYWFc=;
	b=YkLgtDCam9eJ6lGUljpwmWO9tamED0WCRmyuC8DWxd7JM9ekkh31PxISC8M7EQ7V
	dVjh7CFLqDGvA3FTxLw+vqqfJT5t/wrl+vBmo2BQ6QQT0FQANBYMw615wpB0DrgLRWz
	Oa8RQ20M3y0xQ/jFfS02da1ck8n0icX6fN/w4slc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661365252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PLGFI2pZXBFJiZb0e1kAMmXteoeZmIWy1UzfzJRYWFc=;
	b=YRAykPqInXn6nS9UZlyExbXOuqVARnPnjxhFFC6tI6f/bEHG9mu5nTe4iZB0zqLp
	fPIGkW9Xrhy4fGI1B4LphVtkgbPsiHbxKrh0lZX57AdU9u+3Ai+yL2D+ARqlt2b4uve
	wNb8DN+T92tr6Y/wWRhLY1e+6b2F98uw+ZZo4+Fw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d115f22f-975cb179-525f-4f1b-b5d5-81397eb0d6dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6b264b403a359884a13a9ccfac731a79fc2ca64441eb29cda4b9a9b8f51ff82
Date: Wed, 24 Aug 2022 18:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661365252
