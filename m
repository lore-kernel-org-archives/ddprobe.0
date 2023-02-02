Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E517EA4
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 06:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21A8C433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 06:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675318565;
	bh=5weHeGgzbdiIH7r4L8bIb0ZoYSx+5a6Jqvm8gIYht1o=;
	h=To:Subject:From:Date:From;
	b=m3GrVJJ6Ok/JxHc1pWShPLzQyXZzx5mwy/37ERlUGNT8eHdiCiqTLpXjT337vAub5
	 eso3jmj2RUzMxRBfd2ZJ9ixyTPoCud8QmV/Er5bsbCQf+e1M1Mm1NFm9UPu/ileEc8
	 Ct/4PZ6Cs3x/NGfq0VQBSXu9DB7c8spy6nA9uXRiHzc9hIKX0+qA88/1mv/STKnxhe
	 2A11LfVvUaXPiqSG4CtbO6fw9qx+cf+SpMpVoQx3jpCFU4BXaMcl5bKQOrPn+XQ674
	 hjHcwHdpBnaXO4zpg7GBGQ+UpjsTw7EFEP+Jlq7TdbTg2Edj5lPRyMHO+nuCTz1i5y
	 NxnT1+jSGjfNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7824C05027
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 06:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167531856574.12288.15296660895216643752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f8314bdba44768303deeb4dec2a4a9d42595090baa4fc7467bc757480703b08
Date: Thu, 02 Feb 2023 06:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675318565
