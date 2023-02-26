Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30874190
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 02:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2867C433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 02:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677378905;
	bh=TPBNsB/JwMmsd7HAXHb2NrGr5szRBFYiBMnlceu9RJw=;
	h=To:Subject:From:Date:From;
	b=tnLx+uL5Sgau/vQS63Nl9b94h624vkvpXpjiRbBfSKhrz7guID+oEHf//IMN/uIRe
	 PKoYBK7C7dTj3cxaJOmET8mccn9B+zoAxRBWnwohgP2Cr4zqieyMBNOpDB/PlOCSII
	 JnglVh6uTLTsvy1ohrOKrqKAiyfWQHURKdx2iO1U9k+tQVDn6mk7oqavXOad4J1eyk
	 7gspODZVBSmrNR4pJ++RjBl8trAgA1XMA+FSUc99MrSIitx9YerBIT0WPTfxg2zye7
	 EW1bkR131ZlYFNuZcb5spsdmadX6aeTRJ2MgE4LfhZYE0+FlYupaUYvPT5VnRx+Pl7
	 gvoH7vF28sQ/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B765DC64EC7
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 02:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167737890574.22318.15930252724224837030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e7fe28d74c455f5062b59e4f8cc6daa59b4413bb844141fbde90933792520c6
Date: Sun, 26 Feb 2023 02:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677378905
