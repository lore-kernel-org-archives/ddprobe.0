Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC973190
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A2A4C433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671117687;
	bh=C/sJl39B5a3CsTUvzFo07up9UaxyarNa9FNZKwL878E=;
	h=To:Subject:From:Date:From;
	b=hC2Y6JX2upVftApsiOVjXev5YyHr9QkqmNsI/mgj69UIUgpP44oQDiAaN/DNkFu/x
	 zncy7PCymCcUACJfOlmEjOSmztNIT1tF5ACH5cVJqP9CH5MSVBoB/GyurzPVK6tJwK
	 60gGnp5NTtsyfXZzNw93hVGg5K1DtyQIWs8zRZb+0hl6YgeTGwGrngfPP8qSvQyTtC
	 IKdKJcu6St6ua4LSv5NWwcsWPiFKlNdnFXhV8B3Pcri4qVRsWFzyaawvOAGHzOrYFp
	 wrre4BP6+Dt8pvh4BfAMbiH0JHln337f4AZLtxLgKZ8YBu1e+476IfYADtMj+7q+5S
	 N2GSB6OwHIHiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F0DDC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167111768743.5826.6432271869843408830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce63ef312330662e9ea39e3af71ca4c1c23d05de944aa3e26803b251ee46a816
Date: Thu, 15 Dec 2022 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671117687
