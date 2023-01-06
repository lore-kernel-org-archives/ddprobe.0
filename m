Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36607B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97785C433F0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672997487;
	bh=xMCY9hyIgK37zsFS3YhXBUJxcbSsuB96/+zuABz6qtA=;
	h=To:Subject:From:Date:From;
	b=plHoSyjNAP9EIGvT1RMspofgT3fZ9qqJWHldc9jhFAbz6qI1hkAykw04K02rMJBu4
	 J9l5LrTIDzdLAXcUPmlBbQUDlUiN2lgdv1jn/Q1SQ9SuRZc+47/agSCxpyevZ6mZA+
	 yELfd4pncwEsRivWoaz8VngFzaDzR4e2venQsHzqV9GpMAjvUsFSgQ0m/ZpXFtRfyO
	 YANpwkcqC3hW+Y1eN7w+4bLkcufSyIwjDSft2G0JauoOqSwbKJzRIz3KFolgjSFbab
	 aO3ybQQDbRpO+zVy9OAQYzgpiZpYm/svC50LYnkhJmPjaJDCZW9oki772Dh06voRhz
	 d8OyC0wxEHKAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72B2DC5479D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167299748745.25025.8944065966676363808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d369d74f7e98810b0e1b36505acfb8a605f7e3ba900d953620cdf768be2a08
Date: Fri, 06 Jan 2023 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672997487
