Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD617E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 22:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645570285;
	h=To:Subject:From:Message-Id:Date;
	bh=JXktQiyHdS0ny9Y8z9K8LcD8pu1zajKobQIR0JQeYVk=;
	b=KBxXmImeGanTI8/N+V0VvBVbEsFHUdRFBKbr3nVg1ayngwPF2KSC8iwWYT15kfFx
	WiUqNMs4+xXSBLlqmjVTmhtX/20RAG+CwpBBPDFe2oFYyMcRekvRzjW4uf5F2EWqcGT
	F40Nq4ldsD6t6asLNzLzoiqp8vN2t57HkGUwFJf8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645570285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JXktQiyHdS0ny9Y8z9K8LcD8pu1zajKobQIR0JQeYVk=;
	b=R7xzbaC6ihf0YS2fVx2H6wQKYRyFXL5DonsILEHSD5h6/VdojK+QuNRR9NVCBulC
	r3drkhXQOIA5MGH6dIEARX7dm7QoSBwG+kRF1XB6vafropOObCgdbFd167OkpBHZ/vT
	kr2LjJJzxYLt/kzfNwnM9IwRZCxB83tSJ6pvF2qA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f23a1dcf5-6d8e3e91-f9aa-4c0a-915c-0c105536be64-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed4bf3bd93babce5529c9b80a34b374c4c4ebc09c4783cefe70a7791e4e2e14b
Date: Tue, 22 Feb 2022 22:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645570284
