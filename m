Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F507B
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 04:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651120858;
	h=To:Subject:From:Message-Id:Date;
	bh=G604lIMYHP0UQulFPhyCr2v5YwMc8G6QEVnscU9zWuM=;
	b=iXV1BioUcfXHebzHMeR1BGH7l7hgiOFevhASowpsBt/e08gpVxcAjWX5fL4uYUWZ
	o45irTU3omaHMs4JVAbmUGdnIx6KeAbG8xMlG7A+gehi4FJs9hvRBgYD8cnv4Rv4kQx
	An+in6zHaq/j/Xox/SGUIUj2RpubgdHkEZxGUtrI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651120858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G604lIMYHP0UQulFPhyCr2v5YwMc8G6QEVnscU9zWuM=;
	b=hEff7iQObvwOFY0Sd/P6pw6aqNLeSdGclSiFfPPu79FZFQSyajRV+BGjX6nkI8qH
	4NZov98qtpW9+LTtJrXZT8gUngBWKCbY3VBoc9caWqmYXbnxO6qXlQf2+HKehmFYSs9
	3RaejeSIBUrCwjS4StniO/nb0Pna2eps1TzT0Uw8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806e78e4df-5508c499-ed4f-4c6f-84c8-6b8e228099f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d1af05ea45640d8b9c534d69276c83d9f744cc17367460175b6ab7ee01933f9
Date: Thu, 28 Apr 2022 04:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651120858
