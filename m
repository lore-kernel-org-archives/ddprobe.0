Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEF2621
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 01:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651022218;
	h=To:Subject:From:Message-Id:Date;
	bh=T4/hlp/jzoIzHNYF3qNs5eqR191YiUVE1H/ZESn/+bA=;
	b=B8WusPok2BJjJXwADl3+69vvYlH8akt68l9HzGQXZsNO1mlJV5BMgMbe2D37ou7/
	JmQyg4g6czPmryMJA5/6OHslFX+GkvLosRrnurrXX9dQNu89EgafUfZTIbb365fQj6E
	47eQAtN2DgBC30JqfMyvAKqd8Hbo4WJDbVDlTDe8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651022218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T4/hlp/jzoIzHNYF3qNs5eqR191YiUVE1H/ZESn/+bA=;
	b=Kc7fAJIMcoIEN2O6GsZU7+df1MTsZO2w+gHbELt9Mn3XggHtRovxFLmIy9gWc+1u
	9lqWe1LFAdRlg0P3VBsY6etVtbEa0aLB1UD0qwR69GaCrdOgnWAk/wxBLjlp0RWSzHW
	30ooa3+vDgb91waquG8xMFVYLeUEG99MgUnzWdsY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806897c429-34b20a8a-22b9-4a7b-9b88-f5c6eec65a8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0256befd892508ec4d9b726dbbf8cbb3efb7d6b785a43ddf9076b19a8483c623
Date: Wed, 27 Apr 2022 01:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651022218
