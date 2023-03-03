Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449B91851
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 03:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59D3C433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 03:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677815765;
	bh=yE+xRUcUgf/RK/3waf9ar68ZYherg17DK8E263hmQTQ=;
	h=To:Subject:From:Date:From;
	b=no5rT6Nb7UINajtmp8sYxf+HXtdDa9YseTcrHOEHPieK6YnsbI5muIs9XpRgUhkHY
	 eVuk+8QUBeZ01uurFdmJHDo8OVvmY+TpmnCFerx5K6XxAOJ3HgDBacl5X6lpzJdCQt
	 L0N8GzFnM97xQ/vrNCPDPDVq/cmuOU9HllPdQrDURf6iv5f5KbafDitcV+goiHo4/u
	 +22SY2xwQTvpyAZM/2ZWu0E6Mv0UXRAPw+ablqotzxmeVwXs6igqOBRyjIWd4sg55p
	 HN327f1qxLzedPxTtZkdTTpyxZKpYur2V6w7rSMD8NCVfgJ1pWwWhzGhwFmdZBNfIt
	 /l1tgkZS1kCCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BADFDC678D4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 03:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167781576575.29114.11742584542046496032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d448fe176313a7e74873058a96e3f6d8e2b453c1a46c78baa0d4c8a3e8862eb
Date: Fri, 03 Mar 2023 03:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677815765
