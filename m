Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D077E
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74D72C433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669018254;
	bh=2cdhjn93OYH55SzojdKrtt5hqwn0XS4g+R/RP174A1k=;
	h=To:Subject:From:Date:From;
	b=Rs4o9lZSqZHaWUgiGqUMwl0oHC0SZ2xVTnPmV/00EMMfFKODAvf5Yu/cS8Ll6zW1M
	 /Pg92RRroiSSWfzdfS4Q2YLl1ra+0+2NAwKClNBpDS+WnODSoAkZdaNwKoLQ1Qvn7U
	 1ggEzIgSvlvSHHvouR8bRbxjiheTHEd1r4uXZV0qTiM6oFo9CmQRa0a86a0Vm8pTEE
	 0QDLPo3bPpN+InV62oO8nF8XqKdtxUZveIhZGBHiZSbwczshdQd/EmgG92JzkrB+NI
	 v8p7yJy2y4fHfCGBj1xxdDAxlzWmC2ojNnmvTqn7zITY9vj1j3ZO3PpR2JBs6qIDP6
	 uTdWrVkr8c02Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 548FFC4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166901825433.22909.7234789872948922944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beaa5dd0deb4efd8891a8ea6ff5fd29f1541fb52b390a960489d2eebfcde16b9
Date: Mon, 21 Nov 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669018254
