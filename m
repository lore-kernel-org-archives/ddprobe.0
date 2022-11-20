Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6FAA34
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 13:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA00C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668950454;
	bh=wmLDd4nPXpMJa23KtDfGlATOkBo3RTcRj706Fy4uxkM=;
	h=To:Subject:From:Date:From;
	b=bXI5AG/vFr5RCwBfkuoTAAeiMHsgdbWbVir7Dy3+qhdJ5cr84os4G1rHDS2FwIZZ0
	 0Uv87yJxn3a1Jt9HjM4wi7IdvFOxlMZ+CrLcs9pti4obVQLflDHzNavqmCWCd8/IVy
	 B9u3ERmrgI4/1iMzhzgZxutOv8A5P7qvUZhq6laZEUM/sGQ/qTf8964/palAH7Oj7N
	 U7HSETeKRnX0AypOQ7jCYY9TL5UqhSUVSHRAPJ9Nq7a9Po5FFGzRlKXfo5nuBRzVvb
	 9j+5ItFBMK1RA/gLz7hnHYJEcVcD9Fw7tKJb/KMN8T6fs/YYHuFigMpAWv2BrX+Wza
	 Y5bUwlrd5B9sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 549C9C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 13:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166895045431.7260.18281195661209434913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 699c93baa1b81668286e1de1a8204fa4513596ce825bf18372386a48f349f06d
Date: Sun, 20 Nov 2022 13:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668950454
