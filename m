Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484CA17AC1
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 13:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4907C433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 13:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692365648;
	bh=rf6Z0lRkLyn0ODQgLwPmKhL0m0xbO1Gl3HSTST+QWJw=;
	h=To:Subject:From:Date:From;
	b=PPZWuIzw/uUaNdlCJG1zeZdChNnpqiZBVu0Tb/9uCFJSyMDviPlkpt7mEXwUsas47
	 fidUhYpIGd6nKQ2hqw81N2HdcWb7N9fPSBH75IKqQWsMKjgKI9TWxSI7JRS1Mrs5Pl
	 u1hk8bWdgCkGW6pmLl12RmRfApn5UBXfMBU3GzNlVa6rXkmr0yPjWaG4NBhEyKnvMy
	 OijQ57y4ADbLRFlFNDQqrzQDI89mLHu8PwWSrxX01N+c7dBf0gUSOPPSIkZ3E4GxOf
	 V1/JqLEWZaIy99i6Razivp4FQ0UwM+USB5OsFBlKwTV38KKqNjLJ8v2WOeszVyMpJ8
	 euDqC3UTio8+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F92C71147
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 13:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169236564875.23988.11980612512034491155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640d479c2a35e44855cdfbca1c39712e7cc26ba8df16a40904c6deb878993451
Date: Fri, 18 Aug 2023 13:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692365648
