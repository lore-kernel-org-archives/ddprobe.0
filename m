Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEE2367
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 00:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B68C433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 00:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688431568;
	bh=FWJMTAVVGlu/dJ9jlmuvXHhxdGILkcLXX0n/OPMEJjw=;
	h=To:Subject:From:Date:From;
	b=K0vYUXqZpjF501tPZf4363aFw30XMS7x08RUM6lpzVBjwYyFF26iv4w6vLj94ZmBy
	 S/AUo3x5wJ3GsvgQsupKnuVArx+mE0vQII7kiJxnDdqLnq76QGB72vZ+Pkwu56iTLk
	 SoX7e+oejX7/qbJ/LgyzB22wcGB6uH0uo8Hzcfk14eklTmMlPlppIgBc9l7wjbtsjt
	 8BY2N26hXorSAKL6RZBHr5oN/6w/wyhW+iv2tX1umIuVfAt4jYx7Ew6RFn6tXS4cj0
	 HCq/VriYOpO/hdTpVIxIUxkbp6zxrKn0BippF6M6IrL0yx76Ji5ODgCJsXLKzhV+wI
	 lq4fieYPZTRfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1639EB64DC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 00:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168843156871.17388.4593314334128146630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5baae3f6d645b9e6069076f6a6ae125cc8503e5aafb7af9ec3e0cdda44d656ef
Date: Tue, 04 Jul 2023 00:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688431568
