Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5E19187A
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B46EC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669899054;
	bh=+a0kcRC1hESWxxcAuFl4bZEPR3stRxCX4wnvEi8brxg=;
	h=To:Subject:From:Date:From;
	b=mybMPrBAk63dT3HY6NkXP1WMU35Z4rTI/QBsvrdSa6yi9HDtrGoJmxah7og7hPU/9
	 gSW0TMXMPR5Khdq1zlVvdWtjUSJJUPXQaQVFFDRiM0SD6SuRcEN7j4pidKHG5pz75a
	 5iRxTdCzVa5f1N8ruaJXCb6WTN4e8UlS9S24PLfYBzinjmZOA+vTLVK+kIXpDint5i
	 7XUWJcflssNkzLEdi+PqBYMSONnm7DngX/uIoeeuBINEe6VZVT9wKFUma6/2dKwUHJ
	 btxW9eeddeYM3lO5V7LxaGPMsDnh7TObYDSKfaF54e95iUXXszriDRYk5z6rXyp6Ns
	 2hrWXLyYWnm1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EA50C43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166989905437.16061.4799116830456312816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24118952a5d5c4158cbec6792517458757f39dbea7fd0bea261345b6462bcc14
Date: Thu, 01 Dec 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669899054
