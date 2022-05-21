Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0630F3210
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 20:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653163979;
	h=To:Subject:From:Message-Id:Date;
	bh=ExWmhRjrExI2ebGWc9sk4aOFylobfxZ/muTemrt9OD4=;
	b=i6S1Z5/cNfiliwGbK7cNZNA4AVhbA8YvDNvbYapHNd2TYmHarG1S1VzNAjU1RcK0
	K/lLF88cKvYKH6YN2JjAiRC73WdGfgIaG13+qHSdmLo+ikNLO236uaU8HMDJtI8rdsQ
	akxA3mSbLOSUijAt4OwwiQUHIyUWcdhZ1OvR4MjU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653163979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ExWmhRjrExI2ebGWc9sk4aOFylobfxZ/muTemrt9OD4=;
	b=EkGgfh5yp0XmIGlQ+QbPBfDGzZW2yD+YUoYa0CQWCZubuYBWHE2jdIHHXIEQXWy3
	qC3Wg1dw/FLgT8CmMrOx6zu3hKNY1psAr4BBstIqndRBR+kyr4kkAtYsxzlxUnToJLw
	hJLLuxOBXqbT9FPh9yhN4cb13exIZ1msmjKqOr2o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e840722f-75b440ad-b384-4712-bf64-7e9cd4f980d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a44971f6ae32327289ed3bb2d5d443ba84d9e6f1257ddc31a00a67c2ff519d7
Date: Sat, 21 May 2022 20:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653163979
