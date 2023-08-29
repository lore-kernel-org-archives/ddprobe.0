Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568007FF
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 01:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A82C433B8
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 01:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693274048;
	bh=zb0HW+H/vq2l74l70WN7wPOk0Cq89BSaZfaG/yssfu0=;
	h=To:Subject:From:Date:From;
	b=A9kXly7glb84QcfmrrfW/WquXfmWo3d9LDDrjVh1kVYRvhniclfqh636SZW2qeyDa
	 g2WBNdpxQ2UrrhPIpK0Uj2C+JrIWpTP9rLHztBMN4e3ZfL3qH82yFOOQDhFvJVh4BZ
	 kPEl9okK7xcZ2QtyHfzAcd0d4zSDFcQT9KTIhj51h8gaD2QpRAWL1wU6g0eGbqSjtV
	 g0fyT9o+5wHoPxFJH6mYzJGV/3yGz+QQ3f36Kg7Uso9fxYNJdhUOidXDamX8w7Ze0P
	 xRUZikEUB/EZ7/1PrtgK23SjFh7dKRTl+HX19tBm4OHC18ftNMvOTrrwqAf93AAGlx
	 J1KDfbRnqYMeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31A5C83F17
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 01:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169327404872.31913.13035996274148031682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dbfde16e93651a5a2ee7ee9093ec563b6c4ee2eb5b91d48731942fb28c7a389
Date: Tue, 29 Aug 2023 01:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693274048
