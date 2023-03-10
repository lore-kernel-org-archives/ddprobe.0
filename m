Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E25F23A1
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 08:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5328C43443
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 08:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678437905;
	bh=NpGdz8rRxlhPbX/USx0IgudfjzVowO1RPw+z93QemAM=;
	h=To:Subject:From:Date:From;
	b=Km0JWJp/3t+b6UhrT4pmvMQ5hZmNo0Vury5feUkt+sULOtHbHJUzs2Vyhv5FLLKTp
	 ZCe+UhdnvjM2zw8TbIReEJ1LfWG3ZyRd9D7HcCgwBtn7NtlDR8iBBOgC3qEqSyWYpC
	 mEvWVqWj2guI1o59NKciWC+9cS5JsyJNPs+ZJZyzrkIGGaCpqrAX95Ux0w8ca8nXTY
	 NGxuFOa6bBdhXk1SYNhAeg6iKJeqSTtOdXAoSgOk1duROnGpr5dFh5ovL5k088QA39
	 yWQY41AZcBOcDEhBYp1xMUTkASiBZ2rY+2d1vG559YejD9NeTSQYa8W95oMgtk5+36
	 PAcSPhNGvwmlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C89F6C6FD19
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 08:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167843790580.7532.7073189921199891218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 009bd87fb8ef03e487d899961395c88026af593181745b8547d47162a232def6
Date: Fri, 10 Mar 2023 08:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678437905
