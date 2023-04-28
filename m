Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE42A95E
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 19:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1074EC433EF
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 19:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682708706;
	bh=lXtldM4HjXIKpVWpNmHU7x2AEF5WOte36CrfqwcPJqk=;
	h=To:Subject:From:Date:From;
	b=JZFMwmW10HrWzETrnPsZNXk1M+dwuYLM/0xsmKX77agEe/Ah4w4CylmIxUWS79vpR
	 X2LtN0p0yJC6svvsdrGHKolXfYL1wiDoKb8UNpb2zU2CwGDTY7RXAVFOQeUtER6KL/
	 nwalKKt6AEvG2ya7VMlDI6fe6ui8FEA+nxCuxG4kQnMhH7UrCsBsLnBjoAgbSaWEfJ
	 ajAiC5AqKER0da+uB7rZl7LPyo3fmKgLmavDADd7Yn7lqfYjse2YlALLBinOZ1qIhm
	 vQ/fsBqHv7aAdaOWdi3UVQoJlXBi2fQ459oEePpstNA5rAlcudWVRK/l1CoWylcO/g
	 Hb3J16vuF68bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2C1DC77B60
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 19:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168270870590.18560.17025987409056061905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 200bbd26c5879eb5fd3eed4ea12f0c86f022161c352faa34edac98a18adad580
Date: Fri, 28 Apr 2023 19:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682708705
