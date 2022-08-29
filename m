Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52667C
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 10:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86D44C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 10:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661770252;
	bh=r6goA4TxaZkfie7O+d/foulF7pOFLjHaVF9ch8sY1l4=;
	h=To:Subject:From:Date:From;
	b=WaHXLKYqXkOJjvbIUc2eiecdzIqvO2TM8YWR19GKTKmZLPVfSd/c1k6Z1rHCjEi9a
	 FDfLPY4lR+5N2YsK2qW+lRQLRq/0nViQr9oImmtQ3uskpYbKhZNWbQmDM5zuc13Z/Z
	 0LddrlXBrzzENlGNxxCkAKZw5OemtDjH/Gh2oSBnWfIgBjxltZ/J7qWYHXVjXJWFBb
	 AEkyEpr9VrboYQ5QG6eRpG+4lX2DKznqkt/wL6KGUQS4ormxPA+KRourQmkvdD6M0H
	 9obaxUFtvAk1Ynd/ikSTGBUjwSGAtBINXrCQbouISLBXbeMKWQcEZm/cqAJxYUT/cq
	 bX1UAa++ewa+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B064ECAAD4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 10:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166177025243.13545.17447340425987530733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 701557aa76b1b838064bb1374609040a0e85e45781daa899a94e511b6112d148
Date: Mon, 29 Aug 2022 10:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661770252
