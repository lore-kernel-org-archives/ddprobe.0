Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C755F4C72
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79F95C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663776653;
	bh=C1dlJUMww6i+0WQXWn99IdC4Z1kb2XJ+oayBwjWzZhw=;
	h=To:Subject:From:Date:From;
	b=YvtjJYdIp0qLUwh/76I09jZsL+9XIh5Gv9/UQz5hQDZmIjP8jBWKJh9n1k9PG0/BO
	 uwpS3lLaH1cOee4qGKVcFYP/ap3aQPG9P2JsG4uPMufNIJfzdwxbFYe1jLlCnNc2MT
	 JxhII59wOMf5wruRF+WWpdkUMlHmbd4MggxyBKgELRAoaTzQgo8kbhrToPOhhnBFDj
	 8uAn8mbnsKJybxVmABOH2NLYkiXtyKLBDvZy20ePTQKxAhWRjPTXqtiPu43sIR6719
	 oDBeAslrMEkXK7fybIRhY0fVC8CCSfc6hWyfFRGtFSJlb6i2aH2v7Zfqd+R2tgpp1X
	 m2nnMZv2JE5wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63378C6FA8B
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166377665339.17747.11605696733706029023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ac04856a5ee429e6a6cedef06b964ecfa2b4e9fc2507493bfce47ddbfce8fbd
Date: Wed, 21 Sep 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663776653
