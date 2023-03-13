Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416A38F4E
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 23:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C5EC433EF
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 23:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678751225;
	bh=BDAwgPKIFbv257x9E5WTPqlKJtb9+SVS5HQmt81oj08=;
	h=To:Subject:From:Date:From;
	b=jVlj8ai/UJUGwcT9pKr+60YwRBXnRAWkJ0x6Wd8+GAdEBjqLjJ+8WYfwcwZ6E7F/E
	 cNMsssuZ4d6VA+Q9i84A+VRGNhoW0UQVDzov603gryYP7xJASzikoXzGZ6xTWADgXS
	 wjVJaZKrRZYM/VtFV7led0PmSkcPgLhkDYwfEP+XfUnn2VbTbtK7ErYFl0Aro8bgVB
	 2SOzYRhrDxZrM+zEY8oqLm46qftLntYO152Y/KVvKJ+liy2Dy6mUYJJJ1/QxI4lZVZ
	 n8pb1+wusE6mKdOdcTT8F19sFie3UMBjgNyHCf6WKHJ2fAjJeKKM4C+BL6woAwQn5N
	 xUYVh2JGQ9MQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD8AAC6FD19
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 23:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167875122576.28733.12780610049915788496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 468a63c2c335296c1fa0e432a86256c15fce685ab51297a7f876e585376372ed
Date: Mon, 13 Mar 2023 23:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678751225
