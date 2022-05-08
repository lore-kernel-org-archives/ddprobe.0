Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8A2C10E6
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 04:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651983238;
	h=To:Subject:From:Message-Id:Date;
	bh=MdhMjTaBMr940xQBM5Q6zIKCM1mb2oFhTbPLKziiadk=;
	b=BlFhUMK58azcwTTdx1/zapdzmwuOKX0Y1HDG2/29h/p8m2PjAJIObDfxUsN46IW2
	AKwALPeAelhB3gRq3CF3mzKblIqCyNXqHHRfMZ413n5/cFJIy1+U9WuIIvqKE5+I0Fn
	qUHu69np1Nh4y7YnOoMwUDgTKG9gXKNl2eg58bE0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651983238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MdhMjTaBMr940xQBM5Q6zIKCM1mb2oFhTbPLKziiadk=;
	b=YrHWKfiSbxDbX88TAkcySG3U1ljBMkSZiS+8DXZr2+ZPTaAiPgGCOHnLtA2VfL8v
	lP/q9NP4wmm1poF94i6hTDEcvT6MIFDOhbnp0/RcW6xg+hIv8dpnr0JfxwA2kkvyiGi
	4fn0EN3+TZ8rA/K2WNl2doll9k/d8YjnkMePxrpM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a1dfc486-57b9223f-4788-4922-be26-9ae9f0202044-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de375fc61cb23edbc86fd316ea3a1e77fd79250589f024f5d26b06302ec3d422
Date: Sun, 8 May 2022 04:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651983238
