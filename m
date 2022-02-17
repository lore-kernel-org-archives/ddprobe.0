Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9084C3D8F
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645104384;
	h=To:Subject:From:Message-Id:Date;
	bh=/6RchfhN2UyTmF6qwqDJibxHzWtrDbhK50NQdkPWXKI=;
	b=PTKILBEzrHKheQPNQqTxwa7wkPrN9RqXDNd0p5C1lmHTT0Lq4Z04dIm5kp0zul/j
	YYgrY/PgF7Qfv5C8VUsfOHfMIW3UKexEWz2KasBoaEhp/ST5N1KN/eELfRSMuUbKnC7
	JKVRtrnoFNPkztISd7iD8DuGR7c8bmGkRJ2kCe+Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645104384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/6RchfhN2UyTmF6qwqDJibxHzWtrDbhK50NQdkPWXKI=;
	b=ZcdISh0p2Hb56p07pr/JC3iEe24EbYepGCyeA9lC+Xvqc7O+ynikhmp0wddTDJYa
	NLsXwIXRSEapJjDKzlUBCqd+LfLPRiLckDcmRoSOuoYYIecSuySKhSvYl9AsmFMElu2
	1bFIrUVN9baTdhlQtws8kB0sy346KJk9dQZZmCQE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f07dccb2f-11ddf5d0-0c76-48c7-863c-239e7b3bdee4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9a103d8e00228733cc16b0535b5729f5774af027a093749184fc2b39c56709c
Date: Thu, 17 Feb 2022 13:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645104384
