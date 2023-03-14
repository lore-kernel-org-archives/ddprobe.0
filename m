Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBF428EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 08:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA4AC433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 08:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678783085;
	bh=4C00Jltn5OJCR95d+LYP6MrPxw4IwMh5lGsjgH6shMU=;
	h=To:Subject:From:Date:From;
	b=U8UqH2DdZNf0XNwfbk8GylP/+81lefZhlqrjkztvzjCeZX82GS1BNqrG+2+L6f4q8
	 Ttee66PG8HmGelIovFPJLgV5Gs58R28mE5+E/9iLsXya2hUtmvzOCOGEARdWj0BUGz
	 D9Dg6Za+1n9K4RDC7ZdTKTrKXsCgSo8aqiHMdrMgvYpR3vagSvFfMs+fvQgyLli71I
	 6fLoHmc5CZztoAD8ks6+rIAjmMmk426XRjdNeabCOzoLtZNjOLUWlfKEXF/nGUrv7D
	 R1q+/tyESt01c7LTnAY/LlJeJsqp38qxbrgqwppKPwO/zTyiCFg5zE3AQ4QvaQWXVs
	 P8TVQT6sdmLuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B243FC6FD1C
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 08:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167878308572.3899.1599609329226934704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4636dda7e79de83e50363aad2013d205b376be3b48116179169b06bbb37a30f
Date: Tue, 14 Mar 2023 08:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678783085
