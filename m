Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE86C7A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 20:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647375385;
	h=To:Subject:From:Message-Id:Date;
	bh=d0Pw5vTuW02mCvQa4ls6L8c3K211zxzeqZL/kWCfazs=;
	b=VbYSLdBn/M3ifk4dazAhMTubMN4Ft6PpSrhZQQi5PnNNJ75Zf3ipGoEYSpdL1bKQ
	zBTnk+xZMfbUpEc/n02OiKYtEqLm7yFBGSofhI8Y9VyzCzTnZ5fLhREjqHvIga5Jhpi
	6dWTYLoLi//y6M2mkEMoAjnCgRtaZ1krwpCNraGE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647375385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d0Pw5vTuW02mCvQa4ls6L8c3K211zxzeqZL/kWCfazs=;
	b=jWiFJNJ9pxVLfXSxsdIG1n3mE3Hjek0kq9bopHl5GDcC3/CLP/dMfuepPtT11hwD
	6LnDLuOm+6rxWzyu8zCIU7iwi8ZLEilz25yCMNmaQaMehRJOIBzxXcVWITQ2UFijJtB
	p/HRVdxiZEAs4YeiCZ4X0rx1TkdQXAj6Ezh8O7qs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8f3980b3-9c867831-54d2-4140-94db-be8e89b349dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a59dd42e0a777414a8236d4fd51707fc067fc6844d958cc0c2cb17ab2475ff0
Date: Tue, 15 Mar 2022 20:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647375384
