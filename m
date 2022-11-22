Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C661F7E
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 702D2C433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669078854;
	bh=3IJ28fZa2HbWFOy7tgOecGqCCgz+PQ3Ze0YRH5X25uY=;
	h=To:Subject:From:Date:From;
	b=DuIuDgLJQSCv10hdSQec+amIT6jrxrKWyFwGAsLEgX1EKM89fCHTaXKrqipY9bFmy
	 dRVW5pNUWoNmxoghSPoVLbhU1/RjEexJvUMjAn3+3paz+vIuFk38VQSS6mEo8pq9bx
	 +bvgFC9RQN7Wfql/QI5fo30ANX5q34+CWMwaG69yYHfIQC0qAod5Vg6QwJ8ztpWuAz
	 xjuj7AMrcj0yUrxS/nu5xz+VU8BXyukDunDXXP7ULt+jvo/BQa4rqs93Ou9OdhK6UZ
	 jmZjEnenkQw+Fsjqx4zwaB8TLJge7ZayuepHdO3tacwelTQslIOQJLW5/zicKfJz6k
	 AsVK8/BgKhWAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 505A6C43217
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166907885432.15657.9340899862177136796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15e23f9dd730b926a7890875056561d1be4294042c4c74d75f9532986c88e453
Date: Tue, 22 Nov 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669078854
