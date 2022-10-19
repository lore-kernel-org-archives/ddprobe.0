Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1DF12F22
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CC03C433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666183853;
	bh=ltDFB+5narb0Uhtmh0b1zY2pVs+kXBH6taVmuxgMTLs=;
	h=To:Subject:From:Date:From;
	b=k8pgtei8UtOYbcDqC8skryRiM+lkW10ggYeKGCVdxm3L220pK0lVY/L4B30hMAfSM
	 69968hIXlZ2NcrcX1IekB4Sqky9F5CquKaSH4KmuFOiVkeqVbJQzSQO5im8ik+vEgH
	 5+o/oH3CXIEjbvZHjwzCpWzqbFl4Nzn0yujavAZsbMNvIJbK7VbVqz555FwDUK4Seo
	 m2hszFC+AeI/BIwejc42OU66mrzIRbkf6fcG4cKks+jKIw5Ad4ADn7Cwcg464Ha8xb
	 bVTJLn5iXTfUyGg5/1P14jM6TfOrjsVpukCltjBm80yGBzRPkTsWt2tdUJXXNYMZPY
	 TGKkoLl2wqZKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57B99C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166618385335.5897.12055105882681757830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe50ba18fb492bfd4cd991ad13d179c323a32173439fb3eec93187d99c58153c
Date: Wed, 19 Oct 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666183853
