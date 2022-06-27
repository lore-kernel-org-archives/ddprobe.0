Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A02B7A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 05:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656309412;
	h=To:Subject:From:Message-Id:Date;
	bh=nZFyKcJTqw82VBi4JwP2hP5IfJm6YEngxFbJ3JD0jtQ=;
	b=HYa+/Wbx3Jc9LRi7OhHYQ+Q8PEwQ7tEgiKeMEEprJXXkGy9dF0fcIkTNFVdVDvVP
	7+Zd6oLWuhyGAm/wQgx6hQBgzV9fndpLjIEeeBu/LvuiLG4Qqp7jUoacO2xIEuAz15b
	pdzXqCI3KJ+R1C1YDUWT8AC9RyafUeeW8h0BOj/w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656309412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nZFyKcJTqw82VBi4JwP2hP5IfJm6YEngxFbJ3JD0jtQ=;
	b=Se5cdjdh1utgxlFze8YUMemrRgdIp93IsRU1k7kLIGYEqBExoH+Vn2D9uHYSVhOC
	+7rnVjgCm/FBFTDFJplrN/LnyZQwBrix1jMsbNTghZb3VABjgnIUcp+KdJHlvIfUKj5
	ezUOsJEOsIpNWwYD+P8BhRhmMUs4iT8M1bURTAj4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a3bbf194-ebbe9c84-879f-47ce-b9df-ec6ec07d91f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb9715c150d7d9dd45fafd8bc257a0c6b1c0663ce83ece14c36d4b1a18cf3892
Date: Mon, 27 Jun 2022 05:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656309412
