Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1748E1367
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 14:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649599258;
	h=To:Subject:From:Message-Id:Date;
	bh=bTz56eXHWUxq7f5g6G5TC/zyO8337LqZAQyVYoL31/w=;
	b=FloRZFJGgrzIywp0GIHF2ac0fEzbGxFh/QFwY3jxcFMgJipc3/LGrhSYaJefv+Gs
	kylb0wE7koXQAoIbgFRzo5gq/F1c0Y7QpcvG1KaK5L+W0fcH0l65N60XD4cAyXNxGsX
	g48O5Eh1gh+NdipH2gLx0DlI7YKSsJ4qIHQddQyQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649599258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bTz56eXHWUxq7f5g6G5TC/zyO8337LqZAQyVYoL31/w=;
	b=NgocdZnl8xwMFkwrHPJe+gG4eaWSbXOg6S4fdeqpy22rdY2DJpWh+qZALbnGfnue
	PEWOiQwIXJU/7KhdoDpqlDO5HMu0RvtSToKS0qr9H6IAGn7WJwnWsTz0xVjj3t5Sbf+
	G/V7no6htXs59bfHQcvbnlFQbuCaecnIf4tO13Mw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018013c71e8e-77140112-5c98-49cb-b368-b4e1d8975b76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da2bb3bbab30b6d9acbd3440df3e9f1c4cb65afdace6922ebf4bc78d9adc5f62
Date: Sun, 10 Apr 2022 14:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649599258
