Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0841873
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ADE9C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673517087;
	bh=MxyfunmuEp7OOpIYiJel+mhlUqx/86+rBvScGWCZqZ0=;
	h=To:Subject:From:Date:From;
	b=aev7XxZQbLmNTf+M9TMWXqSqt3uV9N1UghlGdnWhv/PIJCD9kyhKxx44S+Rol0QhF
	 +jSLM3dWaYjYW9BQuEJSd4CQdJl1Q+RBasztmx2L9cxxpqoJUoPmmjo1aZOsvftWKx
	 FDMpzbdj6XffnOxyUcVsEIVZS8t7J8yPutTYQPmSoWcZqpwemmYHeZoW6L1DyW/9y2
	 3fyBbSx9yjYTaJuCD5t4Ujb52Nzi8n7PnvovpGRZU0VcpaPihJqKYmgVxqG5XKLvDN
	 f5SZCt1CizI4MVUoniAHonwIhCwUDEQF/aDAcsNwQMUgfWwTtlGO41r2mK+ywGYGqY
	 /ouviOrNdRlkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78CBDC54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167351708748.15874.2125590376828000621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21143192b33c121d4d8b0ec30d385db227a6fc9c34394c35042da42adfb51807
Date: Thu, 12 Jan 2023 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673517087
