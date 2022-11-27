Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3EF12CA2
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78628C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669567254;
	bh=U6FM19o4TIUoM00U4TVPKTrq2iBJglZUq5NF/zu0jIE=;
	h=To:Subject:From:Date:From;
	b=K9VHThHXStKTUrPbELEpjf2+X/gtA80p4r4TI11ICN1ok0pKgBk9ZzjHAqbLwq1T1
	 En9tMV6EZYf82RIO/15FXsdM2S1eu6l/nane011r9UMnrG9qIFxqR9V9/yIo8sImbd
	 s9I4J/n3V6Rhd0vojOGxi6HnqjqGA6DS2qHyJQLkWO2KRg/ojqZnqMtIVP6Z4nyIfj
	 VDIFnF77MSwQJcu5vw823nXz7KI0P7bfSXvtT4VatvjFsD87E2lzS0EJgWsf2SNZ/I
	 PyGFIG6v9sNZD5a/eB7OpPZXS1wckPN4uZeIWzD9qQf4Pc3jKeYeCXaVki6OOI3JXB
	 9P49ux1SAP7xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59AA2C43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166956725432.22807.6333299920939575537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07aadcd1361a936044fb70fe741a91503a8eb7b7c9306293058c87143aa09027
Date: Sun, 27 Nov 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669567254
