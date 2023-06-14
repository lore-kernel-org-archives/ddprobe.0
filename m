Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B7527F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 06:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1015C433C8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 06:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686725228;
	bh=HHkMUcf5QmUjpNnHqTEuEuhx8cjuJ38vyBKlvfaO+0c=;
	h=To:Subject:From:Date:From;
	b=KlcBkK7Ryd7RQUuivo32TPn+mZ1qwlyG8eH2jTfs62vOqxzreiuYa1sJtk/HmRPM4
	 8NoyZxXvhOl8Bvpt7f3HRWgzMXlwFthqcTIpd2oQU8w0GFTn2xs5o09v+QvbzSXxUu
	 Jz0j0hib5JGNkIH+XX7R3ZqBtUYbUXZtCbtfJQxKAodZMnHwO2/npXMLSrGrhktq0B
	 RE/FArWU+qThPuQaJKglys7Lq4k6aY1Ux8uDFKDz7Ssn6Wuv4U12rLz2gwePBDO1lB
	 OXJECXVlq2Ecix0cGQFTfj0LbI+l6pxxyTGmPspvsykgqevoZTfGFkYNtyNLQ4btcH
	 05HhF449KLpGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3B9EB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 06:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168672522877.7762.6876525493200233143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec233e7278ff1dfcd24c4db7b8574ff836fc24ca71773787449c7c8cb7f9debe
Date: Wed, 14 Jun 2023 06:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686725228
