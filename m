Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540BA8F7C
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 17:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03E3AC433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 17:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676309046;
	bh=WMZ/FY7eIYGwhQOXpLSTgcYHBUbPsc4BUqyvHqm7RCM=;
	h=To:Subject:From:Date:From;
	b=m1+1MQxl88b2cZgoiHnrDjqF7OYmERqEHyJT/kSShTJuXkMgAvKxVurFOsIdx5ZIW
	 kle6ZvZG7qW7OOccZW3QzjxaC48sDz/+k9BNDC5Hn2xcqvm37L4vw39PREyzbRt4SB
	 hOkdpQ95YYB0DdcwSMfIYL5ZndyEWbFY5MnXK8lWSuEkvHdZ6yyG0v2+Qi9J72U2Wr
	 7MaWhnsrdjAxQ99EaFzK1wMjAnIh3Zi0ND9BSPKcCFMTPo1MYSmEnZLv7azXTYBBe8
	 R2vbaeuAutVWkDBLw3TD1nEKzprtrhufyfG+ncf2E6crHLjprqgtfs7YoiaZbuDt5v
	 q68nj4ChZTo/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1E34C636D4
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 17:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167630904583.29912.8403211582009458263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f018d2d872a4b3240f675b3fda39e553258b7020a6ae06fe6a84cdde2d372715
Date: Mon, 13 Feb 2023 17:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676309045
