Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B31D063C
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68596C433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664961653;
	bh=ylDeE+MQtv/b3MppNlAW76i8in5m73oxMTtzp+IFZow=;
	h=To:Subject:From:Date:From;
	b=MYSBNXO2jH59dpJftVMVIVu0rXy25+PdGnEPi3oNiatIFWVEfVtSboQ5mHrcy03/n
	 zTsCYERTBHeguj1ljHV3M1u/utHrGdgD+inyizDH6qbcDEW7Csmb41zTdaDGsqRLlL
	 gh/a1N/fp8mvVvdQL6QdwAQRSz6wFebvAh+4/IhzYq7sx5vSUsAlxpaaz2rfcpUbz4
	 jf1LDZkydiAQ6wFs72BPYhJ3KAT5yJ3u/NaLg5maBuVJ6HaoIYOoBdJAI0b7q17AmG
	 1DrLq33gPnk/QvsoOQ7/NCU28AL59wBQD5k++ExPTjQLDbp1hX224Q1QeLo7Zuz1pI
	 uJ09Iu/rzVHYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 516FAC433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166496165332.7420.6176891332999207825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de4b01fa3f699945a5ec18215cd0d6c258f3cd1950b28823e7206a6e7bd47eaa
Date: Wed, 05 Oct 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664961653
