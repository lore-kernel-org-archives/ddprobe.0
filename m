Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C54A3B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 13:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651066378;
	h=To:Subject:From:Message-Id:Date;
	bh=GVoknyv4pNyR0L+nrzG7OL0eNeshlGfYj8IWFzuhtNI=;
	b=CZoSLj5CKW6IA95PgMqOL4AptH2+1h3kP/R16ISn0Dqepype8668pgI9e+IGKoqE
	i7sVlBKhJxPpgRFYiPJYiYwF2IJ02JYbBMDyGQr0l8AuL0xCFGqbbsIQog+JA/qmajF
	abu+tO0LJx3is+qz5mD8p0Hk6+6vr/75SEIHtV7o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651066378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GVoknyv4pNyR0L+nrzG7OL0eNeshlGfYj8IWFzuhtNI=;
	b=Bs8MkKh9WjMrivS4ZL+/aHSbSriC2dXXRvCzb6hZruy85/dBlk7boWUXAyKN8i+L
	+A5YpP18nWpMFzYx5f6waMOlVjwDV1cOVR72OdPdWs8wQlfw3WUOz3r11xMZzGYysWr
	jXDWkPnz9JD/qK2ANvFiR3s9qjl8lCdGEA3UVmEs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806b39982d-9a9a6410-c90f-41f9-bb54-3dd3eadb9cc9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96a3a14486396d5085ba4aa308984cf158808927173d39d4acc9421f29df7657
Date: Wed, 27 Apr 2022 13:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651066378
