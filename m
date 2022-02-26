Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D12E7C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 06:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645858585;
	h=To:Subject:From:Message-Id:Date;
	bh=VoMUnqwmH1V+jRGXbyIFEuQWFmHt5MqNO8zRHGex0co=;
	b=aRBVRUzqQBTt7kdMelJq21/4++P6+QaR8gtpCqsFnMkL/2dyF7wlETwvfzvS2Ucc
	nfHLkX7pPJjbw1XGqF1cOyjW7NeGn1OYAKZ+WpQH4RdQ9n+jbWY5uDvHkZ6LVLkCCVR
	Ux2Ejl2B6cYl5VOp/CuyIlF4tEDEEHNYLvaVMhsQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645858585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VoMUnqwmH1V+jRGXbyIFEuQWFmHt5MqNO8zRHGex0co=;
	b=HxmH/+NuMY+xzE6URSZbI9yCuZrWuU/lROAwEVLq7M3zy83ejIR+XVG73gMjHlYk
	u5IBUiKhKsWMiejYHE4aBfzsDlIik24Z4n3rH+BuxMktSD3xHyD4DemtDOiSrjtXBuu
	HGcZFl09WdOT7h7WPc6GZz7CLFj9iuiiZ3reDb7I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f34d0f910-3fd04c92-2dcf-408c-bc70-64339408ffad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2941bdcde7330cd6b227bc911cec8cdefcc05f663623e5e52bc0878df699233e
Date: Sat, 26 Feb 2022 06:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645858584
