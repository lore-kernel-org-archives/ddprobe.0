Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B407A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 10:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647770485;
	h=To:Subject:From:Message-Id:Date;
	bh=VGUtaBInNd+puGM3wEk27i/zqNBftF2EHOnlHXN2URU=;
	b=iPOR8dDpdI2A0TBRmrrm2oVY3Gn8rViuRYQdMhQOH0bVY2tHIf36MGHlrEiFw8sb
	wlzolfgi711B7Zxzd0FYCJvAlv1yKvtDD4RshY9EhYWvvtrv9oUOYrLvJlgKwkdDq8y
	+8M3Xetmneaw5Wi8H2XfUPlBSFOEmV5uu67mml+Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647770485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VGUtaBInNd+puGM3wEk27i/zqNBftF2EHOnlHXN2URU=;
	b=PWg+Ca1AANtIcS/mh7v2jMpb+LpotktPQThGs0etIHJIvxmDd4Ue1ImVpQ9PV70E
	Rbnt0hXQb/nLgrhdQ+lC/zA81Vb77P2DTTSnJg7Uw1xdrHb7K074QNDoqj23aVCcqxR
	TtRLqGnEhctQ1gb20ipBHboX6q3wBQSJ2u6xNC3A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa6c63ffe-b863bc2a-1c8b-42a7-8ffa-8747f08f5e10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f32c8676a1dc35695a445246631e830c8123ffaeea2a758e6897bd9bc7ec1166
Date: Sun, 20 Mar 2022 10:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647770484
