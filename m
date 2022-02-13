Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306E37A
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 18:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644775815;
	h=To:Subject:From:Message-Id:Date;
	bh=5aAc81ssRaRvbvfE10SV55dWXUwA0EiiRBK3orWh97E=;
	b=g3wBbmBwjUA5GZx4CgXxykoa/KkvUz7loR2sENRGu70hYF0P5Y3Rxv/wFGchrn5d
	WbfHkrIlAm+Y12JdCcl3YxMnJ+qRTqNZdaB1lqEFx4FASxFgyc3FPuLN1LG76wZcKSo
	9ZvUUnnh03vm5MRrYwWhKhe+F0jGheuQyYj+ONM4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644775815;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5aAc81ssRaRvbvfE10SV55dWXUwA0EiiRBK3orWh97E=;
	b=cddFhbMC9WeX9CpVvqPaEv0wCDh4VzvJWxsvLqcJ8oShkiU9E52CqKsdMt1PU818
	iry7s2x1p7fqoD0PmyNA+33i4cgMbxlHaJxGcWCetSrl0fmq9BXDzEBvPaThfmITOl6
	tacq48qEx89ffdNhu3f9GBdlaOTa1Se94kJhinMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef447390d-5f71264c-ea6f-4a59-ab85-da49347d7541-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd9fd90f74fcec9d365e2de16698610a166e5fae0960f321165b45873d6c68b1
Date: Sun, 13 Feb 2022 18:10:15 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644775815
