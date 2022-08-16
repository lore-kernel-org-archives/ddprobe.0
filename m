Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556D51111
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660610452;
	h=To:Subject:From:Message-Id:Date;
	bh=/1VTfoluNx9ajFGiPdjG6q8pwZr6kALbZWPyFSz5t3k=;
	b=Jx26waUIrO/KwDpK93ljv4OmSDrtJ3tWcml5nSb8RSLV7HioQZ3yU8J1szp+QZJC
	deoHj2GZsDBkyVLu7sP1Jc1YefZFTIp733DIVz9mn2BUMgLWTKj4qigpJPJrIYywyCn
	//4sAA68p0sXEIpRPLAKgtaFkTs5qFusk/6ukUNY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660610452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/1VTfoluNx9ajFGiPdjG6q8pwZr6kALbZWPyFSz5t3k=;
	b=gBnj6JIwnq4SMduUyMAcGSkpAdYbtGgQRoUj1dKpNZU/ACl7gNPslxJe6trM8UBG
	QeQWCzVBrKzIrOBXAulMUqPq+3dtXpn/0172RG/E8996UQvA7xLMRJQwI7rTWyh5mE9
	1FYj2Pc4nCHUjwsxAI+kfmrxNYwyyBR788vUiRpE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a4189c4f-0bbdab9d-1093-411e-93f8-b43c1f277f9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04c5f5975fa02da7501e36db8e59acdb302c8fa8b9ea8ba1f03b7dff83e8d8c1
Date: Tue, 16 Aug 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660610452
