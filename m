Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FE4A1114
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 01:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAA78C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 01:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686359286;
	bh=+XjqT7titTHOsCssAFB8j/+5H1W9WH6CR/5JppQjI4U=;
	h=To:Subject:From:Date:From;
	b=Ora+KjaxIg52Ia8EMqx+i1izIsA3pH1a7+nw1nJHJORsOcgMcq2K0oZHJq0jjvsgB
	 5E42Yyqi+467lKcbAbQ4QccCbc8mHG4qZqwpr5IdPypyvO0vvb/fvTm6vdYsBWYEoH
	 SHkGefxdf/eDvZu6rQbMYOpqUYp4rDEgZG/6UyzZUh4L5nFPp6aOLX4Jz+cDOpHQlq
	 YDKx+ZYzDr90s00w9U7n1U0aSwZIcuxkeg6a0KGz1accg3IoGhr1GnQwRxmHXcma42
	 qAiD+5KV+PQl/Y7nuZm+KngYd7rkY2oSYhhvZLjO4ihyCffsTBpbqNvjLBMxuiktcZ
	 1bEHeyQCI+1fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15C6C7EE2E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 01:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168635928578.23350.15795181929991598327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27292b5eaa4e346cf3dc4145f19aff76e53ebb93af2f20a1ad9895b6228f24bd
Date: Sat, 10 Jun 2023 01:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686359285
