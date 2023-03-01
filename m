Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB11A3F
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 04:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CC5C433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 04:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677644765;
	bh=VXwrIjB6IGvhxgBL105sfxOCrqcypQM5li3ucWEg7aA=;
	h=To:Subject:From:Date:From;
	b=iHQJxACaxNhoUEawRr48pzrGtFvB3iebVq+iL9d4oDn3heEbcIqvjc7PDRnwHa3G2
	 LWlFu9Bzv0smvw+dsUq/8nS4EO0SZmNZys0y/XPrm0z+ANdJF8eXiZRkoLxfc8Vrmu
	 ICJuOiiJU+cFCNAleEbvKqSZNyIH9ctCAmzJqfWPb/+7bnRqA5ou/PKrQVRnmVY0Mj
	 dcYhqRyyB4zWv5+zR6zwbNxLFfPJQBtcOPbpKczIpgPZtRwWUqp/t3Pg3rYW7giahN
	 uetZe6z+TzOCLuNjPaxuptVdJQUFQBS5BUoVOZY1LZIq8L39DtDEtX0Cb9kMLdW/pZ
	 O+qX05THWroYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4BEDC64EC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 04:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167764476573.972.15466442421186112030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fcaabf1f241fa9744cdbe3edb122bbe7a1bef756c5d4e08d0fb7a623a8e56be
Date: Wed, 01 Mar 2023 04:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677644765
