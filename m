Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCCC27B
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C94EC433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666239653;
	bh=A88N971QJpj/yaXsazJ5izbwNRh3h6kKyLrkRQPZ09o=;
	h=To:Subject:From:Date:From;
	b=Vy4OHeIxPgv6/gTWDZrCe4ku5md1RkFM9qrHVpP0jAiYuyMj6zKrTcQPxOeCtBa5/
	 zfqCMMONwS3aN+rLT+OdeEJRoebzu1k0L3oScY+80/pfOye3EqAWDAbM1UVSgT9gbu
	 bDG2l2jg77KWtTjyzG/I/a3B+cv2WU67+BWCPqR+P/9y2nm97pQPa4dOZtcM05Rgo5
	 KYJkTM7hd+ftkAJW73j7Ku21L9ADPP37gC35m6N5fEFQT229eeyro7p7NYQcfIo+80
	 rrssTk8vcvnhS25DDSWw2NnB7fG0Z9/MIh3pzmgRGjy4tFZslUSiXs0caC9SzoBkzW
	 Is602axte80qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 583E2C433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166623965334.6517.9669672714697016565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 958d57e3833da9bfcc16dec68c32e20622c2aafe8b7b025aee3af022dac799ff
Date: Thu, 20 Oct 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666239653
