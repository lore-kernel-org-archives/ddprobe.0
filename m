Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB1B17C3
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 06:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657693012;
	h=To:Subject:From:Message-Id:Date;
	bh=H/5MqPaoTVmgsP/RW6UolBIwxQAKg9t682yGqWg9PNE=;
	b=gG62eBKzc6RkF0vMLn/6Hmiruy8JylRWathziByyL4WNC4nSgbRgsskFEZGu7Zdo
	D6bl4mtLFeYI7lCSD89xoL3YR3C5Y5uHnTm0vVjXqsLWxP/wxY3J0iCHBMFMOMNblrq
	9T0BRtK6dOqwOUp2ItwlXlswllRX+CZZ1di+jd3w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657693012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H/5MqPaoTVmgsP/RW6UolBIwxQAKg9t682yGqWg9PNE=;
	b=Rglspumo3iUsl8QIN8brTyf7YehoYjfxLKD+QaQBx/AyunIxI5VNNYr+5cl+rb/B
	fHTMhPOw05/Z9F//qKNpiXZVrM6mhOPXgKFBWcHfOIFu8UBRpmc05HXJpvoOsJQqJv/
	WgpYaWNYllTeo7F8jwnCEc6VmWwyN3gkaGtzak20=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f6340130-b97084a0-ba60-4432-8fe1-df9e79d332ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb6f651d015e32e41e5a2cea7aa4957a0b3c55d2a157d93ae9191c9cc0b17b7f
Date: Wed, 13 Jul 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657693012
