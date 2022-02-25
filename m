Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E7E2916
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 21:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645824985;
	h=To:Subject:From:Message-Id:Date;
	bh=n0L/uF6CmdbY2rA7L3XzLN6N2XgwW9EmWZuWYQhxrCc=;
	b=C9SMF8O7CNgBT+6rgVuTqIrUykcd0WTmmdAU6OMYF9bxXcsTYanHEyrInkpP9pa7
	x0SexaVcTEAQ5rNe7HkBOZlqhI2A8X4BiZhOCUG/ckiYfXVYmZq757pONaMlJN/FWOh
	8aqwCcfmA132ZobUNvVC+2T02ERKL52YgVdCf6M8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645824985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n0L/uF6CmdbY2rA7L3XzLN6N2XgwW9EmWZuWYQhxrCc=;
	b=fSxbtYqnUJyCKnIfb98xS4X9rERtmiDI4Z4MV6K4nngVKBIdtGXBTY9NbxOIs3cp
	enmlI5ecEp0h1KKpwY1Vl73UmQXEEyzcPDY54I4bnbTf7YJTV2EY4gMdmkxDARz3wMM
	7qyeQI3fQ6VrSQPXXq+BpcjfDihllbU4AaRyjPMc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f32d046d3-1fa0cfa7-1ba8-4719-9edb-d77affa1a805-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aaf4d4746fbd72dee872a325457c131f8c7eefd0572889af1b3a5083ac3be885
Date: Fri, 25 Feb 2022 21:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645824984
