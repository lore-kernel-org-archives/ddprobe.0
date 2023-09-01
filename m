Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 962FEC2FE
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 19:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0FD4C433C8
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 19:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693595648;
	bh=34hy/RbY9C8F7ALrBCftdudKhXf8D6wz4+trCA53PFQ=;
	h=To:Subject:From:Date:From;
	b=YTyCtHL87xhKAyJ2sv0dnmf3rdMwyEsI/cYJAgbRyxxz+YXW7WJR7yRtiCAbo3I3U
	 4Z8wZxac+BgD5lQoX7m4k9v7u74+J+vPx3kmCPy7IBQNd+W8iKE3/M15KCyh0Sja3x
	 2/FRNfUzQu2TFLbjzTP7oMmgdCvsHjCXNYDLn8mB5+Wc1VtL48HSJXkBvUeLQDYAw6
	 XQhKCThgdv+lsJD0dBn81ZvBupmBZ4MKvAhaJL4WB8v9bCR0ozaPeP7vmY0mQ1/ex5
	 ZlhlUdUxMJdXMzp/f3fyJVtd13qI+U9tJUJ5uNTT7Ry/RpI5NVSzfqiHuOs59VT3bg
	 Qax7umSWk+eqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED4DCA0FF3
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 19:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169359564874.31973.15230116778909581861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77583492080bf6eb4806ae205dc7dd9adeb13b29a97450a16dbe9834e421f9c5
Date: Fri, 01 Sep 2023 19:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693595648
