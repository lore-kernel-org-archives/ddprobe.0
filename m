Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74965539C
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 14:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645280485;
	h=To:Subject:From:Message-Id:Date;
	bh=0hQm564leZvXLCPMDbuy++HSq3gKwsZJm6GiwxYuaCQ=;
	b=i6MP7cNnUHrzWmARR5cfoAAwJtE/opWh5ujlftHE897S4eiy9FGIfx36GE1HyWUZ
	yJ51UmTlisF/lmUN3ZhsEgZ4rE278wM0BD8zSb4KUe8jwsArGiq6T2hI3PT/yDm0R6K
	ivel/5QE2iOCfUuH1hgugnQKcFFXUewfzaax0FSg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645280485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0hQm564leZvXLCPMDbuy++HSq3gKwsZJm6GiwxYuaCQ=;
	b=QRw4KHJjlj9rl7oki/U7ctIQY/vNDtwh3uyXyPbyl1qHIAO/dewZW6lgSokNFD03
	66BvIYcNB8ohst37HLmgfA+5WhYbL7IFFoBexbDyIey4QJkJpjORfDTN1C3FzO9LgJY
	pFXYEoqtwtYaIyl2+h/wy3ckNe3CynxXmHUdFxgM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f125bddc8-716abf91-bcc5-4b3a-b92d-0e18259d7ac6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fce157d1405e620e47c1b8624561d7c506143b3010ca373ba5686851175a886
Date: Sat, 19 Feb 2022 14:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645280484
