Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781DE362
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 01:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 23AB2C433EF
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 01:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683682866;
	bh=a8FJa4Er2/slZj3CTFYZ3FoQeBDTV/GWz1GQu3qGZFk=;
	h=To:Subject:From:Date:From;
	b=TJj2sgNsXEkj7kbGoFpTXtUPepflkZJn6b0rUkhm7ODG4OA8rRfGA/4nppP41jpib
	 a1j1HeK60OUWxXnOTFdfSlktaSwOJiIJG8nQGiWE7I+R0h48lkeksgyWTLf+cb/XHI
	 wBYwbETiF3p0OsrMqY+O32rJsRqD4cVAZo3ePLslxXNreSw0ZPZs4jdKJIsoyErPTA
	 bEMsesMnFHZucm9ey20B3KEGNUx/baU2z5rh8n1bsuS2+TCMp8WHkwehhh5DKniHhM
	 /Weze2bYSbWo4VuQOx5ovIct8T9+JMQ3Y7werNW/NzL5FvBbxED1ss4lsJOhC/ikwz
	 wCVHmZ+BZlcog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8BFEC77B75
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 01:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168368286581.26022.17114620544593949523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a945a1deb44c31693327c056693222276075efb11cd2f09fd0530333e03234
Date: Wed, 10 May 2023 01:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683682865
