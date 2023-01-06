Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5CC27B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96689C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672980687;
	bh=rROckjwr2hWm+65+DJoYLER+KCxd53b+KM0jGSEuXbw=;
	h=To:Subject:From:Date:From;
	b=TaJE6/9ThW2ig7xKBP6BatdbYcvI1KmX4BDnYncMuL9izW2dMatxMdzNyR69he5FL
	 xjdZxuDdmY+hZpaVBylbapnGLIj1kSkmZSSLJXtoc4dXVnzeUKWjNJM7xyPt8xymEb
	 T/vgq5nuabytY86Arbvx35Vogwhd+MYGqtbn1lUDrNNIHxW4HG7wj8cJgOI1cDiFVg
	 Pfczbr7qJ2wyv33ONsom3ERBo8IxKlvAsySQW8mry+bjJj9LhBnhV37egdZ9okOzYa
	 QxCM4MpU/ysDP/9NC2FTeONbU5K0vDqdKil+keSqHQ7UZj7op7//DWphdc7WXg8Xhb
	 HssA/SjnhGu3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69B79C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167298068740.6041.2732870811550534089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eda719e0eca28b328a64a9a753e80f361c429ec0cc2b98daab9e719993be773
Date: Fri, 06 Jan 2023 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672980687
