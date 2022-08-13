Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D72E362
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660366252;
	h=To:Subject:From:Message-Id:Date;
	bh=9+u7KCq+yVVrj0g52pNXWx4cxHLKspr6+K5EBkBWMrY=;
	b=MQgPlYW9mKqsz4AWJJmo4B7Zf8jOJGR72WK9NnsGkqO6ceDBaiwk8QHmIHQb7W20
	D/avW9DLme3DUbqjIjrm8cSnSOlbvvQ0sW/ZHKY5R8VAUfoU7e0rFhy0yeYQFmQMM7M
	R+4nHiAbD+XxZPrzoBbinkoCNBNHsz3yy8whbG3A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660366252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9+u7KCq+yVVrj0g52pNXWx4cxHLKspr6+K5EBkBWMrY=;
	b=fYfmtJh0zxlu4HVapwXfFeB/fEaQep35nicqwxeuhtHTkLycDyt/pdb1MqltL2HU
	s+GLDCP86qItfbj/GPLXjR9GGjHow45Xb5uus6qVY1JBmQUc9kFJQwMqUPr2Jq/AdPX
	Yp0TOkFdt+Rs52wRfVGXhSIQQYemW39WNIMLMFuo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182958a6a2d-485e9066-4cf4-40d1-a44f-99a59603f6e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f0729a9fb7bb0242e56fc90ead314c87c21e9f972dc1f8aa01dc50df6af460a
Date: Sat, 13 Aug 2022 04:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660366252
