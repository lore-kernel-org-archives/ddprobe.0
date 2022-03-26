Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B613215
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 14:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648303378;
	h=To:Subject:From:Message-Id:Date;
	bh=GTivaiytdCaUGi/HzfhS4TR+7JgBsmwAs72txfR8m50=;
	b=XDB+cWC4QZxbi0zshdH/S9KWkjBcsRHGGoKntYQ4GyK7D3cpdk1ia5MTOOWyNfVr
	n6LkTjlOgM1xxIXJEEOfsmuvGX8pbAdqnN8An53liVsKM9Q8GGIerdn3eU1SNglK0q/
	OOHCnjy0xMpF0XKkHAPntnyQzAMphB6U6mJjv1WE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648303378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GTivaiytdCaUGi/HzfhS4TR+7JgBsmwAs72txfR8m50=;
	b=Tu0ZSL6dClDtPEZ+7a8O50ZSi1QL1L5dT8Rsq3ze6BTxa5/pnLEqJ0jLlJ3lhlmm
	VjwCCLwIHJquUXuepmLCyxjWSbANgATGY+mvY9gzHq70oOUp7eDz+4f+ASBxOSG6VQj
	DK+oWfCjyjSok4/xPBAKUlosz2HDidGflBI9GflM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc6898fcd-b18541c7-b5d4-475e-97f5-795c673e18c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d9920ade44297705fe9d78878316159d6b5f2d5fdb0000bda6cd2df9ec043b2
Date: Sat, 26 Mar 2022 14:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648303378
