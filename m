Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4052C7A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 06:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654930019;
	h=To:Subject:From:Message-Id:Date;
	bh=RWwo//GnTE5Uc/41vflqj+1ocGMHGTe3Dn48y9C7eOc=;
	b=Z1Ji2pscIhECLp2sd/2NPgdfNqnIv2UY+vJ3wlF3+sLEy0mGVl08CMga8xPHL/Za
	6wqiD4kYwQxXhPEF/SVok43+IuvZJjWkPg/IiizHyFh2fmNuhGen0HOqabs5F+CfFrm
	lAIw67hAxZxlMmz961At24mgI/XTQsSzNoxLgB8A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654930019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RWwo//GnTE5Uc/41vflqj+1ocGMHGTe3Dn48y9C7eOc=;
	b=NChTmhKtJtwDSleBNLb0POvKYhxJFFOLqLfwhv4q7aU7LAd+aYPQcejvpLdUNS6k
	AdjkXtwx7dA5vNnFkvmm7HeAxO+gFLrz+5RPIwnCImQ43v+9JOXLNKL57/D7+ZPBtnj
	pTY8JCY/kgAdf72EU7g3XfGNQjaTBazvN218/6XQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181518413bb-f19fa5b0-8d1a-4741-ab44-c1c740c75db5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 270d315478b8ebe50fbe6295cec6d6b5215ef4dbcec4160994a36322f68b2bec
Date: Sat, 11 Jun 2022 06:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654930019
