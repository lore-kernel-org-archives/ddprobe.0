Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEDDA53B9
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 05:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0020C433C7
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 05:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689227348;
	bh=eRUpd2EOqrOPEg1MG7HXy+GNFqnjMsjxCCHF9zxOqMQ=;
	h=To:Subject:From:Date:From;
	b=uXG29ylIp/Q5kUQXDhcEG+qeeE56ZcW5VjKCzxPScvXdiXOVbHzyThxPcPIftnnD+
	 ceCqI1R8C8gYxo9IjPHLGjTCSGLUZDlz6ZGgowFkNjE3MxWGA1pqSymKkpjG910VF6
	 8vBpM+NCe2zSdSwlWVSVEOLpFXJDuamZxFTkVMC2KeSKXZDHAyAx0UxTRjgtMJlKoi
	 6iwTxEl60cX8OWOMueUp5eVMy4SN2fyQoTQ+tll/WP8gsu0ZgQmSe3+B8ElLRUGfZ5
	 ANqCWCEcrcYAUbt3+YIUim8NS3Qy3w+TXbtd5Yge69iY3grAmxMzAnqewSN7WdrI3b
	 o0szgE+o3RHwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B013AEB64DD
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 05:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168922734871.16938.4528953392817721705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a671994611a3e941bd2de87d48422763d4930471f69a669c48393dd550467e73
Date: Thu, 13 Jul 2023 05:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689227348
