Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F22E3FE6
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 17:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647796884;
	h=To:Subject:From:Message-Id:Date;
	bh=06oeq2YV4xTHgXpKYHPSRsZ/1D7gnSUWpUZnsRtPRp4=;
	b=irsfI+pxpiGg+hMfux1sLcHK4S7kXo0JIDPt0qKLRIW+DE+mSnwSlMNmh9TZ7HdL
	5oJediGr6VPppkqPujbRITs4IPhzb3FTTQZyCU7LLKKhaEXTa8YfUcFXXHlEmqzGp66
	y+0CCyZb3XXeAsGI31Y9smV3L8pB1tQsrcEgQEnA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647796884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=06oeq2YV4xTHgXpKYHPSRsZ/1D7gnSUWpUZnsRtPRp4=;
	b=L3radROXb7DGzwxRlPOrDb6Ef8TFxZzzJZlI72NemGu1PJLg86L47oFgXXhFiVHc
	JggZK4pB18tzdel7MMjM8P4oHZVKNas/YzaFZC1QbHgnMKhlzJBMgKAiT03+T77i7VU
	MMUy6/kyUcFvo2R9uILSnLSQhlkaIgrh+Bx094n4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa8591515-e2415e79-c7d1-4a19-bf56-3e34b71863e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f81f47514fd7e26144a6b1fd6fc0ad1ed29e1256421468dfb81ff5f178ab9bf9
Date: Sun, 20 Mar 2022 17:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647796884
