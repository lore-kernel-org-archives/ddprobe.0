Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2A27C
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 901B6C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669949454;
	bh=Jod9qM89Rk98jvc5Q6+IZ78NBX7T8nHWhQhstjoLYg4=;
	h=To:Subject:From:Date:From;
	b=Cm6ZUEQKn2waiTo9XGsEsb7uaCLJ1Ro63ndziAzL7RbzyYgYCHLjinEoX5ejS0Zp6
	 tEqL1AUPtyKGZi8veu/sIQOjEWisxqBnAM6hvlZFrXGIZPeSvispDCQeea26vzSbs0
	 EIsowyybmpcumddYogxYO5FKLr4C8FP10itzY8oQfxoVmZA6O1pmVkgCGs7GY0RLRo
	 lQygzPp3TyzUtgrkwnFVMy7SnGmA4Bq0Ec3q1QcylIBZiFrSFVN2hXzJxhuSFvII8p
	 54dChNlGDhulrSIcLXi3mi9vTHaMhQoIqCEtLuJ6OvdPjXZlaDVjf8H1SA4YRg4haB
	 s5+SWSBi5P4pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C19DC4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166994945435.24475.990363998150241407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1287d0f30e6c7a67fcde210f6ae30aa528986d380421737547e6d6d21253616d
Date: Fri, 02 Dec 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669949454
