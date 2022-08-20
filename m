Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A0F7B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661035252;
	h=To:Subject:From:Message-Id:Date;
	bh=XWqCuOCSM6OXDwazqWPtORxMXOZ1xdHUdBoawLPgbKE=;
	b=bxjbsR/hIBKJbhu7drkt5Jz8MpDsQN8aS/66pJv9c/HeY57K9Tgmylb/k/kR2Crc
	Z2FYHIqq+N83iVhC11ynboQJ01uAgSUN/dYc5hMV8ZfbaWbs4FtnBK33rj2L4dATgYj
	QdK0TWWeeE4kNmyWRYClGamuB0grWGFARi6EfcUs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661035252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XWqCuOCSM6OXDwazqWPtORxMXOZ1xdHUdBoawLPgbKE=;
	b=Y46MCI2O0MGAvBBpSdYGtjqcJGtiV3QCFzYsOJfZu0pni3hsEqDeZTa7z9n/j9si
	aq2JRTFN8OiXu5VsYbXeSUFQO+DSABFdKv5JH4PQO988xCCUtAXEVQivCST/m2ih3cQ
	gtJ8zNNXe6Bdspg7dxEdJMDGErV8iRS7JURGo/Ws=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bd6a8b1b-c16ae77d-7686-4dc0-8fd7-47634fefa96b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d55982868b2f570b55f78c34e8c04c7a1958b3bebd13a2599642a682e48d0cee
Date: Sat, 20 Aug 2022 22:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661035252
