Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC0F2F3D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 14:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656254812;
	h=To:Subject:From:Message-Id:Date;
	bh=ajCwHnd/B1S/Ngb+tDtiFa0RoITBPI14FM1Xyi2fwRY=;
	b=CxuPMBGiTpphpnBO5o/qmKKBJ78l0+9TEOVSKmCQ/xj51k4CWKRY+UNojbG17BbW
	vsuU40WaPnuih2ZlXomCMSHnOtEsx4U4ucxW1xXzFkILdRKOY9yJ1A+NR82YBa/1hgc
	YNegUwqg6tOV25/BqmBI8l0NA1PxXpbxFzExAcKM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656254812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ajCwHnd/B1S/Ngb+tDtiFa0RoITBPI14FM1Xyi2fwRY=;
	b=IbROepgPN030ZIv8hak4iRXJoj3GlJFIQOKxMcK3x58qbcTsjSbvOc1zbhDd7H6V
	QVh3C2Qfmtzxc04ETGoDxCABP+3U7iGV7S7lkV20i7k/Sv9IeXnJa3E571EiKnLiwdp
	O5Kn0HHIVtqE+ph6k3I4jG7mCcjw0qQYWQQE7JTc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a07ad0bd-eeb4d602-402a-4c37-858d-a4ceded3c5a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 643100839d23ffbbfbee6ab95dc34e00dceb708f1305043336e2683d38a5b94f
Date: Sun, 26 Jun 2022 14:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656254812
