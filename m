Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E4D15DA
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 745BFC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670308254;
	bh=ZYLvWs+8Lt0EzQ5JkVOT5yXphHgf3zrj3XL6QPxe0Ek=;
	h=To:Subject:From:Date:From;
	b=J2RgcgAMftBnrVbZw8EeycQkxkk5ztVaH4Wc5Zi6u469hmzNk+RS75dW4VmJT32EQ
	 vjvd0nwPA9DqddecMpXgoW6q/fQS6+hpwnYajdmio5qSM28E9433MNGycQG4Tycxcc
	 vHhYOhvgp0hQWNj+RqALWmlteUe96lWziGhxAoJsrbVL6RyN98N5/0AlpyFW/xnNac
	 ZDC5Pv2OwbjXb2hkzcwMrs6TrCggcCn/ZMNqTzeeIGAwjFQxMogY9Fwfm6miCzQ+/T
	 UwSJ8xVw7xBz+9K6vzyCFaBYbHcqv0wFMa+FQlBlofaqMNIgycgW4bS3RsPAXAxl3j
	 kLdSIid1dqWGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56DE8C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167030825433.11328.16498142357532494069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85df7838bd547b7fca5174e2d25068bc96b92ee262fc33a66627cf3c67f0c934
Date: Tue, 06 Dec 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670308254
