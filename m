Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3823E125A4
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 20:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E2BC433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 20:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687553588;
	bh=YiN4+qr5ssYCJ6uU0c9ekK26epRDSUKFQQhKXxu7joo=;
	h=To:Subject:From:Date:From;
	b=s5rlbwJpPTjeY1fddgMwuwKKIgUjXuaxPFpj9iS/+axBVSg6lGnGnfv3eiEBv0sO0
	 sq8ML+1oK4zrwdvKuCom2p0i/WU4mqy2Vuwj8JPWHG33LhOPuXtE6buNj2Rx6lwc66
	 89AJI8ew+8FthhthRvFhEzbLsNOmg2QbMxR23j+hW8Fq8rmQUIjNtp8nv0sdq4QRoI
	 j7ZD5zVH8AhnVmeIraddUAG2AcY5Kt0jMtAMWARCXMPxbYx4+DWWiqj9du5kDEWnkj
	 QMZtfmxUL4ycBqSpZdJOkUpBptqPbOmNATqs61CnZVtvZUi0fKKJQNaB68eIyNmXQd
	 8czTAYFNrlLag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B1EEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 20:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168755358866.9237.5949723950303032850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f8505c049c4d086c717ae34904a6fca951185039f02f66f1b29e99a2135ec05
Date: Fri, 23 Jun 2023 20:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687553588
