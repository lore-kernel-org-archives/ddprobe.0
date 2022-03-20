Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5AF47A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 01:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647740485;
	h=To:Subject:From:Message-Id:Date;
	bh=BkwSLw79Vuby8BNbx7zTxqqnw3tiFWsmkmt73gEoqFw=;
	b=PoeZpIDwjJxLHVR7mggwoAqWwRQp7MkCHQifQIGwFYqXi26iZLH7TiptiDhHOjDR
	4ftDfkWKNe7i/fxCLJQoIdYaxfkONeiaNRKYD2IJVWo/HTxKsjOHueWMlFLVEhHWM17
	Dc8ZqhO8Z3tE3aD1gyK7Zhz4nzsl5CWIomkxVIKY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647740485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BkwSLw79Vuby8BNbx7zTxqqnw3tiFWsmkmt73gEoqFw=;
	b=Xlyht7sZi7PzZcPJusatwDB3ewObHhTTRqcOmAngd4mD2sQfzKp7vnLHWJBXlDe8
	pQ8lkqMby7d1z8lg5gSY394z4KTCZ2TgWNXD1cqtUUZF4m11zEPBNr7ZLYGEAbaPv09
	zH/Wdbt+sfA0jF2zq97ziX59b2TbSIPdnBNgNFEs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa4fc7c7a-f99b9988-a60a-431e-b044-8ebdb840a5db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2de3ec967c68a61de76c4b8513273aba9fe12ad5ebfe9898a4971a22c6e04c6e
Date: Sun, 20 Mar 2022 01:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647740484
