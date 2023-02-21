Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C44510F6
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 04:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E044BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 04:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676954345;
	bh=ydc0I89GcVbOdOR2LWsDaIjiiEnhr3v9KjYF+NjZ6Zk=;
	h=To:Subject:From:Date:From;
	b=NsM32kzHXPgvWzZei0iYCj12P9NMtBOHbguAZhugKCQCzdXRYgMSh+8V8KUrHTdWV
	 9o7zjCNO2FdwMx8vLfgzh7Dw8nXLpKUl7XYtUZH7TfMQvnyF1O7NDTGAb3/gUDxg/W
	 aRZDdx3RhS31Q4InHeDii4ZdzNO0w0NR0xlp9PRaN2wd+dmSsEwdYjLDPOxCl9qa8T
	 ViG/R+InoHWrBx0RE4w8TiYVYd7M8KA5h/EZC2TR0cQdWMoEYLMn7p4HdQhNbXNh9p
	 AaFlBQydCtHM3fIjUUc2kOv97A6NdqJV9+RqI5xxtT/XNv0/bmKDTfqsofcM74dPR5
	 ctRknjhIH+P9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14EBC61DA3
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 04:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167695434578.24089.4102443076739377653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb20442b310b7182ce6475ff6d502eb75435bc4b7a0ec29f7e979f6a964b1f6c
Date: Tue, 21 Feb 2023 04:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676954345
