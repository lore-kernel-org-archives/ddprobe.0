Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A5523AA
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82C05C433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672599087;
	bh=ICaszZoBWF9GQcks5MW0OzvdDQpqlbxgDzWZxuMlDlQ=;
	h=To:Subject:From:Date:From;
	b=g+gG8U6R3WFVkGOM/CcZ5gLagfU2Y5LjOWg6crNbKJhm1MuYzw86MqKNtu+kEhax6
	 hRqdGr+DhV4U47MwBpXu3yWvGM6aFJrdNUhqlxVwbICzlYT8FLagzyt7SiuK5k4QWN
	 YK3Yq+ZtFXl7RpgVt0gqXOPQZ/MbA6BWCScdfz+6rJEnFp9irSQ6D9s/OyY6gdFO1I
	 9Qyuu0iv3UUjl1m2lGBfL/36n82U9k+gxSNsDPrKEzmJzbbBpLPjcCTZYfCUUgVMJk
	 /ucoNSkmHUau238/zJeig776ActyDG8lteE6vSYEC1e3YrMHJmTHdQ4y5BeeSqXsxX
	 CYBuzTTsFUZZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67CC9C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167259908741.18958.4190780223048146469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e0c535d923829779b464d3107c24a97462d848edfacde812ae6887fcb2c5a0c
Date: Sun, 01 Jan 2023 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672599087
