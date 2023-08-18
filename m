Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83B0F6112
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 19:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7333C433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 19:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692387848;
	bh=ZHrSQqqutoCiquzX2vpiQdUpAk4jDyvuLCrnXfH7ZmM=;
	h=To:Subject:From:Date:From;
	b=TWmc0qJFNrwjxssVC2sW01/w152gUpLLgUv7DlSnPR3duFciWjXywtU0PFjnyuCTo
	 mPlYu6pqzvMQD2HaQ8QWwLQ16H8H38TpF8b4GirVZlnrqfyq7B5YpHYRUVqUvPgu7W
	 D9KZ4HDG3gD4IwlTJ05iCmYUeVYH8UvsFjqIjqmYLiBhXPRQOS9duAMl/vcTIXlKsy
	 U9EXR+2k87vxjV7iLIGt34QnDmdpuZ9yUjAZ3sCyu5TCrGV2YYUcb2RoAzxTCSXIJg
	 k/f7LSIMlskPtX0dgS79oxojon1xusbyGdoeHbJcZG9pzdGErUYGil+buo557oqivJ
	 P3j90JxGh2apw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C774AEE498E
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 19:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169238784879.26311.17372433118715277539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c142ca3de293d4c0b5aed67a1b3f91bf800baad577b23583584303293aeb6679
Date: Fri, 18 Aug 2023 19:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692387848
