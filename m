Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F97B5137
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 21:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647638784;
	h=To:Subject:From:Message-Id:Date;
	bh=g+CLv1Wo4QLRqK5SsGqxrxWpBoQA/loKrNffYcTG+og=;
	b=bgH4Mdo2VlAaPvP5UZXp6uK8ycwhI3mawhfgNr8zBUBJjtK0ZTSvlW0w9LqbDNQu
	wUxGQPx7hNSv/NKX1bQgxYxmCFQXrggMIdJ5feXCYsQ0SDIC5RiuOITt7Be8OKCFdwt
	Me7PSxfINgGxt5slfPgklATrdDt84A3HDGUFPXNg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647638784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g+CLv1Wo4QLRqK5SsGqxrxWpBoQA/loKrNffYcTG+og=;
	b=IF67S4g2osDNCVFidDW333lvcqYulyAi1jwo28YAD1/60rVkqEi0tckCmagfXaKb
	HKUvjouPky5vVcidJdjdTI8T9HbIUd47dscHgyyXuP0Y07j7GCiAo1JDrhfyhki/VZa
	iVxM2ESG1uPppoNsy1EagapvK/aJc3IPFJBwNV+g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9eecaaed-39455eb9-324f-4d9c-bf38-4affd33a74b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d81a103234c8ef14d7820e397ed4b61da53ba1340233be02a2e23d4aa7b3ed5
Date: Fri, 18 Mar 2022 21:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647638784
