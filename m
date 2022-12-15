Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF20C569B
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77CF4C433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671127887;
	bh=8govhw20Kv8KVe12BuGtNRiJWmucA1t+6LmBuX0LRAo=;
	h=To:Subject:From:Date:From;
	b=nebry3gA3jTIWjsIix9GR/6ISUlIdT3gWUahsYDV/HjSas1dA3Y0Y3uUcHKmGpg8a
	 bvO6AMAdVF1tAwEQg8vmJByw6L1c1PkU4bom+tKWqgTaSt7TweKHky+3+/vKb22LwS
	 MUrHnSFHgQFgIw5PAfRWGRXnDkpbS7C6MIiWpx/G+hr87gJvt6deafvVnqaLoxnuRB
	 dDdrmGreS9+lVC/EUpRh2F2ETgEqKq9nRuLLFx7dXBBVKJ803HD6kfHbflpwX/us6V
	 8/29Zlx7HBuBsokxULrUmy3gzD/Hw/A5139S8op08HzNG/O5OkdVwJqgVJ4OnkmUyI
	 WXJtHDQC0MsDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E46C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167112788738.15879.9888287015130770638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b95c4b493f784f9ba789e0d051cbb3cd2f8657132c51b8d5660ad68e2d38a782
Date: Thu, 15 Dec 2022 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671127887
