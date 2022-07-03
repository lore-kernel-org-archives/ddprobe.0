Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE5A3D99
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 20:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656878812;
	h=To:Subject:From:Message-Id:Date;
	bh=9mEDX1rtkRrNJXx0VWanqutUxpmK/IryH53mkaHn54M=;
	b=A2Nlvfaf6TIaAZfwvQV+lgdizVNum2HipX1qrdg01vEL7OCrGxkeofLgFuCMnbOa
	CzXOI54jFlL7Rl0bhqUearsG2oXQiWyt8Ms+LOS1teRi3cJfk6sVYv52kt7P2Mx9Jaq
	7mCHavASKAPqgFlt427Cr+wNpxKY0Ks43RkexCK4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656878812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9mEDX1rtkRrNJXx0VWanqutUxpmK/IryH53mkaHn54M=;
	b=blGGymrx3DVWm0vK5f0GWqMuKMI/4fO3fzhtSJBH/NjVPj4kL5/Rn2+rHI0pTx5Q
	TWJJONYH71q3QGUcgaqfbb2kYbhL3FV0aSMBtV+vrobvwoleep/F1vp/0FoOGo1wMDW
	xhYeu/NepwFBW5VV2/NfmxU0NXKM+41MB30drwV0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c5ac4cc8-37286699-91e5-4e83-a3d0-79f77642db20-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53aaf0e9846c16ea226efc1ff11fe6b32c7d58c6af17a1eb6a9637dd59f39e25
Date: Sun, 3 Jul 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656878812
