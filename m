Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D42777A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 07:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645599985;
	h=To:Subject:From:Message-Id:Date;
	bh=gNPRX8GKraqAKCEt3Hm+A1GE/5QWpqQ0rQ97C2J1pgM=;
	b=WXRTB8e2ynkwsmncS4LHNejNvqrdiGKdqpaS42R9xi350j5hSpfR4qcCf5f2zQlk
	Zr0JHAVHeEtXK7EBBSYFM+yniOySvTavZ+15EJ//flpzlfp1kz8GSGigTg7sk+E1jNf
	7OBgKy2RHMtTzhS5x7fxEtxzS4Ge+WKy7CoFcsf0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645599985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gNPRX8GKraqAKCEt3Hm+A1GE/5QWpqQ0rQ97C2J1pgM=;
	b=Bqyx4bkolDou3pYnhzAL8VSSmGV0ooTAAXHTK9W2fm1uGHHrP+YoSmjyWa36hEk/
	Sn03xOhwnkyrR6fwM6VVJ17YfzVuSZ/eYmRuEM2n/I7CH/tgGAV15Z9OqdtLPl91flt
	1mZo/iSJktAfo+1hAVnTPjTMwXLIh786ZQtBZ/U0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f25670c8e-a02e04b1-14a8-411f-995b-430fb2ac66d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4447acc2258bdfc893ebe5e76f38c6587a13e7a4100135b37a9cfdb74ad10bc3
Date: Wed, 23 Feb 2022 07:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645599984
