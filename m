Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0628F20E9
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 11:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649329438;
	h=To:Subject:From:Message-Id:Date;
	bh=N9NDPs4dV0SflNnvrBxXWZubE0I1eHY+qczUpajFum8=;
	b=PWoiySc019rGSL0iUpabppGrMFf6c5Y1V/XqrbTCi3otWdV9HDjTX9xJNqChN4sj
	49SiFqqsVoCttrWxQTFGG8ET9NCJdP87HjvlMG1GI31rjR5kgYb+oeW9+sE76GE782o
	kTyyl9Fu+KYkNTjHGwW+Q9QxRsNEAXilf+yPQinE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649329438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N9NDPs4dV0SflNnvrBxXWZubE0I1eHY+qczUpajFum8=;
	b=g8eeBK6ITL1W+dqp9s/I7ZkmG0U5dSYrIECvz4mHEEr8h/iYTOn7KY15RuKDDWye
	Er1waWpTYa8wfU7oohKG6fcxyYM9+JI0pCyYvLEL4lLS7ZHsqR95AGQHkaxumhOdBse
	1ju7oBBy/kcHctAc2A7vBqbYg2tDcv1QpENuO8zY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018003b1fe1d-ae85e012-825d-45f9-b8af-d4d195d8c7ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e18d9007d3245f20492ad758e8f5730a609df6e51ae18b28187bec6037466878
Date: Thu, 7 Apr 2022 11:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649329438
