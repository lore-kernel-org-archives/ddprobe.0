Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB408746D
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B62FC433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663621253;
	bh=uUONRazK6QJ+YgsMUVvsffEgToXZCLhRCSQOUf0qJNk=;
	h=To:Subject:From:Date:From;
	b=WSns8hnF4Ua/4ageR6YMAL3b8bBHrgEaIUmTqGgvvHjVUhjDI9JR/Inw+UMhIz3Tg
	 5Lu0ebI9eWwNMQlvNJrqGfOvgwfkVVNRzqqmMCyKv4cu1D4enEK3kPdXrhQZKMg0ei
	 Q4srXxynrA/MQ5yBqLBsh9Bil7QUCTeXI/IdfRFVbG4s3TFX+Nx0GDVFpTMJphvEDm
	 7qRT+i4/k4F0c8FjK1Ur9wOahPNFvYfZpr4FENJZU/+tJ14P9eSTZTAe0VYHK4VbtK
	 wcFBPDg4yVWHiDdDmXVS6wXH9RZq84dndkCfUDKqeEVcmkvsEhTqJya894HOHRMpXA
	 ZaTfvqogMi+bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 545E8ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166362125333.21751.401372939584090906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 968e1c1d8af14409f9b3c978b44e37a0e2d23a384c9f91780cb856aa61eee141
Date: Mon, 19 Sep 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663621253
