Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D821B20E3
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 13:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84BF4C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 13:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671198687;
	bh=gVqmthKb4IaEaOsEEDdsxuVpnyVPmH37NKsZmm8iqEw=;
	h=To:Subject:From:Date:From;
	b=noS55KvGoz/Kky6XMxZMZiI9JYsOdWMKxthdoWp5x1/PlmnFT8Z0oQaCVLgya76sO
	 iTWt6waSmC+1je1up6Ru6fcinbAlVwa+urDqDrl7oDDBh1fYiF5mwlNJqkN2LM6+9u
	 uZB+wgyLOSyYiCmaGa50NoPp0BZD8xSgnqiBFpWwsgqesNDPF4vFmBh8pWOlMRm3l9
	 JZfuXeCqeqY8JAhIvc37Dghl+191xefueyd+3R+WnTvjYNlVJfNMYmF89DTDyqT9cM
	 XwfM2yffT+ft/9eRv/Xb6hIszd68nmimiYF0S1U64up8HGknKrSBtJSuaSmHXRM1kk
	 ZAXkM5kaWZvHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 667F8C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 13:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167119868740.20135.9003686324383029497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 732d1c38556949e4457e2d5d2e3785e45f5f8d70989e9d1ee609e13fa3584d57
Date: Fri, 16 Dec 2022 13:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671198687
