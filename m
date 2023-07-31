Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E8EC362
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 01:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D388CC433C8
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 01:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690765928;
	bh=0uigHJJ3fchuJpNTRGkVdgan9oHwWm2IgybnqmS3ED0=;
	h=To:Subject:From:Date:From;
	b=qi2Y8RjqUq4BAfj+Gk0XZQR8rkNmzIXKKRjlTKC1kQ7tlcyiBlRH80uo/VyjlXnSE
	 RrORYyGDwkQPjrXiCqWRx7Ie+9t292sAIuOLYcZ5hY194I0c99KafxnXZQD5zGiq2Q
	 XxPGwe54O1h6P7XZB59efZhdVfhj9jnN8Z2ZjQRjcYULi+3SZqUAb1YjFhNXnrU+45
	 ujliyrdfTmhhcK8DyLZJ3s39tzbhweRK+VcxTQqPDPF+GUWC/H5E9QbIdfHf1ZS+ej
	 tzKnfoz9WL4cbg5/qWrsoKKgfhqXMzeRUTZvuHvXl3vFu+zG/L/qF8JIpacdDq8s/G
	 +UX6a58H4YVdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F2FEB64DD
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 01:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169076592873.17299.10067576182248159548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee850ebae7ba5fee521e977b681c49abbe33c24042d96b1967c10d974c65a0a
Date: Mon, 31 Jul 2023 01:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690765928
