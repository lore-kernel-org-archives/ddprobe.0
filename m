Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169257EF
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 07:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651045738;
	h=To:Subject:From:Message-Id:Date;
	bh=+dSX/1Qr3ZdbfpdtB/fH0ro6kNGSM4cNu4SBnONUg0c=;
	b=GSAemRgK0gF6LF4SqblXjOwQK09hlVFXkqBLvYRgWt4jyrBRe2MCC4y4tKHGpglR
	4AuOUh1xtWkEwWZUKJzwBQg0QVTWIVKj7PmB1kTHzUgPx05jueetSEU4hLethEwfxnx
	xCLDOooTXZ52c3sxuJ9ejWiVse7RZTaqNqz6ozV0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651045738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+dSX/1Qr3ZdbfpdtB/fH0ro6kNGSM4cNu4SBnONUg0c=;
	b=PuNfJzy9aeLWeRlYshPLJsPkn1QnSM9cr9VKhpNhf3lvKnPmlUtqIcfdedIMckm2
	wLo6CywqQ5XIUTnE+kZfzxz0d0az2fHDTX34tIquNHN8Qs//T7x4cZIaPo6QjqzuD+w
	qLD5h002CzrsT2EeWC/39kLzUeNV1Z/6Csl2fJR0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018069fea71f-505845f6-01ff-4c06-97b4-e0ec6cc60ff4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bdde2ce79cf0bcf3810aef2b13cb751236d5783991b581ab44a288fd1c485e8b
Date: Wed, 27 Apr 2022 07:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651045738
