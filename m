Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FB947C
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659633653;
	h=To:Subject:From:Message-Id:Date;
	bh=xWnFREmJLty3OxNuQtchKuzxQC+PEsDUFIiuFdROQZ0=;
	b=E6y1myo5zjNGcTsdsEIjKlULU//ag7srmpjFriZj7AJtLh0sZmngxBxLTyhvCIDl
	stZwvUEL8adbjBA1+0s2dQjZt1ArfQNKfGr5tWzryazrVpo7TifpDzngHiEi/xzSPt9
	pNWF1kLvsKL5k8gjMNCEzTgKyu0pQDDkV2AJ7C6I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659633653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xWnFREmJLty3OxNuQtchKuzxQC+PEsDUFIiuFdROQZ0=;
	b=Y6J0FGnVyEAVS//CmNe9Wrv2EyoWeTnWT3AykakeDM8CuB2Ku/kqdxceVumZaa3R
	xGAuUREap+HjH/L7PYaVxg8nBFxcpq4CZ7aEBN6f2AaZgUzAKbCgILxG2bq8HYBycnl
	X49pJ0fNUHldSKElyf7WQ3i0iWKbJmFIGQkF5G5M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018269dfd388-0f243927-4f13-4b0a-bf98-1f7ab37f8707-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1cdd3a2e33d91f5cec6cf4f5e90130b4322e60f530020f239a7a6f60a29ae70
Date: Thu, 4 Aug 2022 17:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659633652
