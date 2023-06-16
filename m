Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC35C16417
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 16:09:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C31C433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 16:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686931748;
	bh=fSegFpUJ5szPG+BhkLx4hVoFF3l3AaTA+IONEcdM1nQ=;
	h=To:Subject:From:Date:From;
	b=o2c8Rd+wc5q4OsPCocJg1Uv5xxDj+kSLxS7tGD6ZRbCjM5zHRDmbolo37BNZgtskI
	 qQKNetRZ2idOwm+7Th0OZwgUdUbXspiONk63b5qpiwc59nchfzjykvrRAw8P5loFCM
	 oihvnqSy2/G34Eap4k0uoi+kjo/eEE1q63WA22NcZbM7S3fA8KUVpxobArhqYWvnwn
	 lMQ/4UBYOyy9/JIMFltIZHRG5TYypAdA5KKP078QM6hHJc7kZpaerBzj6tUsxmkEwj
	 bRVlPAmR2xAY8HZo264C73+7AcdILF29q0CU/uHcDc9oBwiOKCWL7ScvuD6Q6Eo/nT
	 FwZsKY6lkE1sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC14CEB64D8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 16:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168693174869.2713.14292661866328800071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7a6c774f13361f66d78ab88e8f9370b05ed676ffe69e1d786fff88c81927e1b
Date: Fri, 16 Jun 2023 16:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686931748
