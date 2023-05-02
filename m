Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FCA36D
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 00:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E542EC4339B
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 00:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682988785;
	bh=hCdLSEcGLRF7roxNp5iZvC/voJdd1+X6SxZZ14o57qo=;
	h=To:Subject:From:Date:From;
	b=K6jLwucNZFLEH7PL3PKriUgPNO4RU9MeDgOP0oGO7+ln0MmBP2XU/IwSsdUmplK6f
	 WuJx/nbpDlmZUCqMfvnsEuSzSyCSY5kPN1KwecK25onjEEXEYJFSimPM8vZvdIsY/0
	 gaQtwym2m8nT6OHzVPVYGI6TqrB1FJQsnwKZEz4sFQjDvI685d965xBD1D/i5dJLxz
	 n6ue3Kb04rDNb3igZIXIDVPuEcSP6AAPcM/cCAJinT7tozhHL962JJ8Q5BWvQYiNuk
	 CzAzJXgBNiu5UZCkbihoYtPMtepkGXbxMm6lWlW8iF2oNpsaJdUcz29KuWmiWrM5dK
	 CaP3f5ZpM1cdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C42C6C77B7C
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 00:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168298878579.13891.15635498282433174781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0efb05313953774367923c6e3e9d9b9b73782b11532a436510a9ff4a58868a1b
Date: Tue, 02 May 2023 00:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682988785
