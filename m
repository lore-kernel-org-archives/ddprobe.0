Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B62F15A5
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 14:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652280359;
	h=To:Subject:From:Message-Id:Date;
	bh=mkkIJQrzozaPGFjUDhL+2RYWVPuTFgmK/7GA2B1uwJs=;
	b=ElPFsELSXDCIquuZEyDzvvRYdJCd4XMpOCgHeG31OsI/SRnI9l+/BfTrprgKcfRh
	KSsjH2yv08mnZq3vUJkJ5ihnHZFUCZl1x7I5CCWBNZjPu+bwx9T9lv8MvQnJ0JYbx7/
	KjJz+Ll2KWks6nQDG/DWIfseZhe77mPNWBHaGIa4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652280359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mkkIJQrzozaPGFjUDhL+2RYWVPuTFgmK/7GA2B1uwJs=;
	b=auuR7QtP0YWdw8GEmVL3Bzu4kE3uCr2mNrrsdbgxRzuCs4S9YAVDjDehDHevt9sW
	Ei9z6lp52K5KcF8eDDqlo8yQQvQTTsaZA8LeCALQyW4qTVcaOe8lq3lOhiH75+NmRsw
	fWBa+Ooek+EsdmdF7rMiskQT5Fc2yCgak0OSELMA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b39579a0-021041ed-6fd5-49cb-90a0-c82a80f163dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c934ee15a2862983e9779b6688b7ccada1548545128e9015a4a278ec805e38d
Date: Wed, 11 May 2022 14:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652280359
