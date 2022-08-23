Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69045256E
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661262052;
	h=To:Subject:From:Message-Id:Date;
	bh=GNsxLJy+hOZH2Qe0H/mLMNZlA1ec1aRcBzy5+WI+FoA=;
	b=W6f0WMJgLJfA/7dQHSkwhaONzz410nn85BEx+A/75w7nBVtoGmHQKp8mAYNuZyEq
	rqcvJlHcnA4RbUSMhkOzYXysj60jMoCx83BFxmjx4CigQp03yOK1hg0e9GQQGbpTZrV
	IetAjmSLyo+VQcE5zVitd/0jY5ppsYGIvVr1nn70=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661262052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GNsxLJy+hOZH2Qe0H/mLMNZlA1ec1aRcBzy5+WI+FoA=;
	b=fz17OPHhYAKuM/iXzhbuMexIk1TBuGyYApLqfQ91eDjqlOcnlGHsZlUNN6FRYd/o
	zlr9F1WdA9qKaj1x23+B9QbZJ90BR3DNK5c919Tbx9YrwOcCd8OdfxNV+tzLmaOX/Qz
	F0DM5UC3vLY1jRhuP83maF/0OHzxx7g/coVFj0SM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182caef3cb6-1bcbbe9f-b686-4be5-8167-0e8c7fb939e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1fe35e94e9f3967db235abd37bfe917fcdae182e242ebfc4c6bebdade48b258
Date: Tue, 23 Aug 2022 13:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661262052
