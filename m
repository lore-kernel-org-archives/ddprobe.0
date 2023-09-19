Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D2C1EA78
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 20:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC063C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 20:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695155708;
	bh=XgqDW4GsLds5tkT0vESDKhkrj0kbR5N8VOLs+lj904A=;
	h=To:Subject:From:Date:From;
	b=HIYpFM8Y+18RUlBTCZ+bBDN00VchOtG/XC4KKYp/bcKMjpoEMgL3JhyuMPmUJ9jWa
	 Y1EPWGa4CtkBw8d/jz/6xDKqhT8TvQFAa7sTF8De7UCLoUUVJSEoNpoZ8yyna1MoJs
	 jzUcGQ7Ia9CvZ9TMty1JYxyLyluqGi2Kc9XD1jRxP/+83kfsZlZoYH/0afedUBl28x
	 uIUn3ukeb81buHThDkTYpPjMkDH+ym5xwG9as5ZxHYtsfD2B5mahsgPTQkZW6PWaPX
	 2vhPRIGGepHeUWKVSm+Fm4dYOIeEG5ZIH9iUMNx7lbV7kR34KLbKsWstW+RTRWv8U4
	 1ngxqTjc3oi0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E63CE79A9
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 20:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169515570865.1595.14123353461738523585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3963766c0657632b5e79656b70c1843921477dd35f9524217b8653b0f9bf087
Date: Tue, 19 Sep 2023 20:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695155708
