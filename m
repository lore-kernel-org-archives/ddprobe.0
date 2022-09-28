Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D04797B
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74DD9C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664406053;
	bh=4F9mnBR9zf3xTmJfWZnQsZ0yySAfySfr5VLx0DAeX2g=;
	h=To:Subject:From:Date:From;
	b=bHN8hhzuIAKwbs3RC9QDzTN1Y2X7Vb50CqqJtEs54NC3TN9nGpbxghJlwvTGvDO6G
	 9cF9dQFVTyRbtDR15tq1XlnWPiXvGcWKelgGEI5hrIBRYjGhi9HunIyL8sf/HnfZGq
	 pvbUaFIYG/FkYa8iagajHBT4xANphaCSFfgmro6NZYJJh+ctU+h6Lg2c5ZiQ7eoMMI
	 DI+nJFqHIqUi6r82t5n7MqAIIKFG6eNJXKIUIyogNuryvhtQjmrC1DX+ZgaPE74gRb
	 +S4WWnwiY23eA97Gc5OLgF1CNREC9kXI9bG8az4Z3CxwL3Pd4zK5+rKDxj0LGI8SRK
	 lhyyPRzUL+4SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E4FDC32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166440605337.5516.16371555112270479248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4a1c4e40573b4865ba21466779057605b9d61e7c8a27f45cfbd184d356b8b5
Date: Wed, 28 Sep 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664406053
