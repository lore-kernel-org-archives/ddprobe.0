Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B96B96100
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73491C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661892653;
	bh=5vNUcrZZk+2ZFcMlsmFHvaXrtR/v6NM6nujyXcaHWWg=;
	h=To:Subject:From:Date:From;
	b=d9cXH+eYAlCmXIB9qu3OP398ph0FlE+m3BVSVhHdJVRieWG4Xkl+oIAHp8geXjtlD
	 fCDWmyRQz81javNzVKoZ4Id3Y2qe0EO2twqG6FLHZ1bxy35/hSdDdWc3QhS5xQWKvg
	 z/gtXS4YqFmeVWhMlzpIecqUNZYgO8QyNkRI2IYiNu53TK42pLdxNmLldY3bKwf35p
	 qtHOXdVG65re8HOt+UEFwPFdvz+pL8ubLyTEFq6V18MVllX3lRzS6Lo1M+Tf/+1QIK
	 hsWF3oxc6xlENGyWlOvPkAop2gghNqKCVAg5DQ29/j1S81Fdepc/9A91j8NSRi6aJO
	 CzX+y6yD5iARg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57313ECAAD5
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166189265334.23412.5278144467710863332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fe3544a20c68886e0e4ebea954f8d69d253f51ee69f5139b64d65ee9ef345b3
Date: Tue, 30 Aug 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661892653
