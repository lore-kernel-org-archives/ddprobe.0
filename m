Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DCE9160
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 20:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647721285;
	h=To:Subject:From:Message-Id:Date;
	bh=TT/Ocd/+FMfVNjdgfiKztHq1RHf4rdFWjXz4xwzxtfU=;
	b=ljzk0fcpHxv9cgk5FHSgLN1GM+wUfke3IdIgj9Qq84XDQn4qEbRoD5CVmSTClQ+l
	BWbH4fn6QbmvbLWcQCJ4k1Sl5+mr0hwoggwmge1ITLVKXc4ENRj9EXEqnF4Db03V6AE
	/4Jv9Gqa/jp6Bfx5w8JXGfo9YF7DuxaS0tQM7dLY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647721285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TT/Ocd/+FMfVNjdgfiKztHq1RHf4rdFWjXz4xwzxtfU=;
	b=Nu8HD8unjaFPeRKnsHNKlcMY6QXeM1KQY51v2k4BHOlt01jZeyKu7BT0WT/2d2vo
	5Vseenb4bfNp4bUxQ4Ob5RKLbVfUMN6H4MlFdMIImhcKzkwSRMlwkbLOgJpVvIfJfNS
	Wk8Y45XmQzrIiGsXhhyH9ibNeJWav/fZBDw7STrM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa3d7849d-4c422ad4-9852-4ea2-8a90-6a07c2ac6779-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ba272a218b3994272e5eeb94e6062fcb5501423f6bbdb5a15fceaaa78a2afe3
Date: Sat, 19 Mar 2022 20:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647721284
