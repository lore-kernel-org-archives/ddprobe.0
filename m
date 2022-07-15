Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E512F34
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 22:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657925812;
	h=To:Subject:From:Message-Id:Date;
	bh=BS63cmOC72y0v4hkyLPOMDdzhmJC0vd4rfI2GGkuK3s=;
	b=X8ejOlDbjK3bbX1g7k0/Kmr46vtVrtev/1QD3u7IoCojvRlTkhB2ctuw+CKXmt7r
	1EskuWv+ZiFHx5VHuzCcIXMmqfyxyS4QU3cnSWxLsH+or+XNIK5JntIT2sE3ne6uB03
	V5R5Y01he7WgXAArdkdJk2XXMwkJzh7tlUZQUsAg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657925812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BS63cmOC72y0v4hkyLPOMDdzhmJC0vd4rfI2GGkuK3s=;
	b=JaAm7JiIKsRXGoyBZVSsZWn7JvWAcCgC9j7W7uekx6DEJ9nB5D6BYmrhI4Nh7+oD
	O/j06F+KjJ9i7OjAGW/TZtRMzvHCVj6v1lChjcDdNhRX5JzKDCFFOMA+agcdp8brlDg
	NNjQSYaeG7UF2O5VxHiKlkhaO5ljtw/wmnv/u0Fg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018204144066-dff8c315-c8f2-406a-b6d5-99420294d75f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05c96bd86fdddfd8ab780dda70df40bcc8c8dd80bfa4571c2b0cb9f732da93ff
Date: Fri, 15 Jul 2022 22:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657925812
