Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2317A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 17:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655313779;
	h=To:Subject:From:Message-Id:Date;
	bh=zHOUeJCL1PL3vKvfJySaqcqTm/lCyFMqDHpaiZsg7Ec=;
	b=L0w2yJNLZuozDWp58vqK4iYURo2T/OYci/78M4xnXDE88Bbg5PxjJVl1nWWGBGbf
	ME+6F6piN1FLtiTRm40aEXzGMnWqRkYHNZFzRI9l0Fonis3fSK3fsIo574hmzmvso1e
	pMe2sYAHfzt0QUah2wbrGWu8icIQkYLphdFhQcm8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655313779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zHOUeJCL1PL3vKvfJySaqcqTm/lCyFMqDHpaiZsg7Ec=;
	b=j+qjrfL7NzEeRKGZAqQJxhvln1BQ+UZPYQd4WQ0NWPhAhc9kalnPmROXIsDgidq5
	k6NqdfLPVQFSmjUEp+dRdkhXXtdIF0g1W3X0e1AxtVcn77L44ZQDzatWsujvDPZvG0P
	ICRXpgeb9D1yfvce1U/9u5mNrbxGqunko4jkoGfY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816863ca4a-68ad72f1-7123-45cf-83ca-6de1eee094db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86a49c89dd118e873f0eb063adf5581cc1b6b4cbe4cb6765d82a84f60effac2e
Date: Wed, 15 Jun 2022 17:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655313779
