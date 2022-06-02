Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3152AA53
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 15:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654183559;
	h=To:Subject:From:Message-Id:Date;
	bh=ZWZ6typzJk7PR0xyoQ8jKlEgUyErSCN01xhxgpotiSk=;
	b=KHs+m1YqAkItiCQxW2oGGqLe07RwlBaftCvLEJ0Q0loZqcHvQ4/5ljt7pu1Iw5Z4
	scnkzbZwaaRUPAB+6K62UP+UcFm0hD5zIvxv1gnwiHQGtnLJ0Zs1lNKjh0noMdannpJ
	D4PfGhP8wAJHTnM5/ny6BSDGHcrVmXqxiavZBHbM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654183559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZWZ6typzJk7PR0xyoQ8jKlEgUyErSCN01xhxgpotiSk=;
	b=E2/AoKLMYgUlROQj+dGX6v/xJb8fzpPiYobBD/HksSIQWgSp9/Ziy+ewzwxdW6HG
	nYvsqHl7w9RsAW1+245uiV1533AlVvnabW7BXUB/g3edOOXoflr7DUnMa+TxZAdfohg
	xrwQaSfjrH+zJR4VP1cqQ0mSG/Lsii+HS3oZaTYA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018125060078-b5f5673a-d1a7-49a9-a3b6-745a8b62fc89-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36c1d1c95408fb4e04b6890a6ebf9dd97a1f2de96f2b35bb8a7f6e54784ff5e2
Date: Thu, 2 Jun 2022 15:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654183559
