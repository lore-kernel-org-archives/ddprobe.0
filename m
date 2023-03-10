Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0967E6
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 02:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02E49C433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 02:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678414446;
	bh=eDr34+EQ+CpNqACfs937cnQgVAXunwKA01D7Y1z9jxs=;
	h=To:Subject:From:Date:From;
	b=nFVJeFNK/Wx+m1yxBTI9bFgOizrn6FQbf13tgrf0U5dtPROWRD2XyidkoTuUW43sm
	 wZAWI05Lg1cZbuYbudnlsKEG/Hhds6jI6466zwJW+r4QarCT0M+EyzU/Gd7yQo7wsD
	 LQ8xD8R3NTXmxhzjTpvMldQ0kB665qaFtedzyukrqMVqrJOHOv6gjPPlpTeYKA9eZe
	 PiaUck4aiVI+V/0lwuJnWAUHEf9Y7q5tWpqXzZnaRLEEc/vxIosHco5lYoi8fIuqHT
	 McvZGS6j2I2ZsNKKxmPi7goeVoJPcVWtWiYG7ZFmajHlqteQV37BusCQZStAJcbEVV
	 JfBw9e7us7Qkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D732CC61DA4
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 02:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167841444587.9723.4527347196368505813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcd65b4132261893381233aa5ec75e671f7774ff27b66e8c396bcba8a372f2fe
Date: Fri, 10 Mar 2023 02:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678414445
