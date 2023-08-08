Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F857FB
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 06:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A32C433C7
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 06:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691476988;
	bh=q8MarBjIK/OByIbKVyFwcOhoqJZSC7pEb/TOHVnrXcI=;
	h=To:Subject:From:Date:From;
	b=hT9gniv7MKt2k2qfqcYjRe5NHcxMTew0/0qW3nq9z9QQ/3zTrj4Nz/GUH3SOx2EwX
	 JSj4j+oVU7N8VbSI9GndHj+ipHTn08ZCw28bMRs6mVhjY5OSGkqEUFzT5BZ6cbJ7bQ
	 71lKg6BDcQdeP2SAVyPN8PzmahPc9sxCcHSICahvJ4ugvDC7QqmiVCCw0IwaDjPYgP
	 IRO6a7l78Lwtkp6+Vk140gJjUzVdOZJGyjl4zf+vTktjYCcXuT0ZGeFD4t4uGQURvE
	 qiiW5IwQtGBEyzpm6mj5OzVwC8RB4OWfbxt11GV0IX7Fihd2jNA6qFnQlbWW91iBE+
	 BsYKHAqY8rlhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3ED5C001DE
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 06:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169147698872.2072.15805441479046642783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c339e97dc69a6499d5ba74357e56bdc1f307d9c81b08dff6d4020c9c74fce3
Date: Tue, 08 Aug 2023 06:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691476988
