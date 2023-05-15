Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDB519E54
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 22:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F6DC433D2
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 22:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684189865;
	bh=0gXroyTM1VSvYIk2xTeZQhCtVWE9O21Wn/lQqzrbSTc=;
	h=To:Subject:From:Date:From;
	b=Cgt+lp0bxqx1nPHXYpTdpsG1Lq0EqN26b4jtdmlThc3cZq/i6azT0EqRVhXvxxP1H
	 EUlYPz0G/QvsMU62G22dVvsEnV9M7aiaT9lhAs4N506PrJau0v2qyRf9ZNLvFKMy0W
	 dMG0jtFT+EeRj/bgCyZkVVXVDvSmD3mbti/qwF8HSEFJNLex+3rmBMat0dgB54nkl0
	 MctPmwMtSnU9wBafT6YiBQmZP6N6+JCaaqf+PIYPDF99FbqrlZhgo6eY51/Xvd+qdY
	 40bs+Z4tHJELSXLmTduA0Mkgo03tLe2kXMBEdmeLjKI6V6IIAolW1hfCNP8QJy6dBy
	 NdGjL8Ko/g/fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD48C77B7D
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 22:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168418986574.12091.1621388070720202407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb10a7e7b714dcbd51221917c5dc47d22b09414bc97d28db81911ba5d47e2af2
Date: Mon, 15 May 2023 22:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684189865
