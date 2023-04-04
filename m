Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE24361
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 00:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1E59C433EF
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 00:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680567426;
	bh=gFjEPQnob0eQlWYrb2QKNJrDxi0pxAe5My1fNcY/naU=;
	h=To:Subject:From:Date:From;
	b=ZzW9my1r9l51sCJ1r9SQmcC14HfuHEjBCXbDhChvohOeViI9PhHPBoEsVfBy3MXtM
	 b03YkKCV/dlE+Jy7OUWBegMPYnTasr2o1trmzQiWpgJtvQiy0qZnmgAMTc1UfWdFKE
	 PsZypXjaXHjzmLEp51O1lJg0QNX58U4aoUHoODM/gHx8Vbz4gwAwyxFKoNdqtqTR70
	 mzEm0MEKdYBMc8mPyJxKaEBqSsM4UFsg/XUwTOTgotw/UPzKw8P39tiUTCsXpsG8aB
	 QpU61UxsjcbNZ25cXbT89z1c1EnokiVEak6j/ypsR3y4+7usYMZWCWUYRVJjKfG91K
	 ujXxs+Duhz3NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDD9DC76196
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 00:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168056742583.4284.7989843963555906385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad1ec066a864a63fd6c8e4a6f50b1a50d0275ef1110038711afeefdd3b128e9f
Date: Tue, 04 Apr 2023 00:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680567425
