Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1A47F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659322852;
	h=To:Subject:From:Message-Id:Date;
	bh=nDd49sFl0In/OZ6lX/1dx/Gr7nLCRdf3qxO3yZm/BWQ=;
	b=H7FWhIZY3JpkxmEG2jX26YlPYuQvFg595MVM96E3d9VYiOROkeEEqXZS1zkMU49P
	sX7s2eK5y/YDDh/JLNMoHALaZNPA+RZbJv/+ciuh1UqBVnnOqszLVsUlYiSsWE3OxlR
	OueyG9UKzCbf3/+MMRcISKEkQG0/ASkPG3sQpPq0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659322852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nDd49sFl0In/OZ6lX/1dx/Gr7nLCRdf3qxO3yZm/BWQ=;
	b=aA+vf9cYKg0otFyFhLuXsoKPTulzs296yanAHhNkl9tqYt8I+ZnqjhU/lDsS3igE
	pwuqwHauLp1J64CNHGNRyUuB44Xu6p+MwRDPvT7HGmbye0/r3RXKe3fUB09atMGM6d/
	gfBFI1cEly8oS49qBbj0MNCXljNbJKI6khZKzz9M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825759649a-67c942fb-18da-4c5f-99aa-3c860f146395-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 236114d815b4576e89665062a029ba341d6f186a25bf75f32b9f2e5a4d032dc5
Date: Mon, 1 Aug 2022 03:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659322852
