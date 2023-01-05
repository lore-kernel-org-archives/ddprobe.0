Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5D7D33C0
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92715C433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672955487;
	bh=VvUrxHnTG0c4JuuGfPC5Do04DadfJOFneGUZf85LwG4=;
	h=To:Subject:From:Date:From;
	b=fKk0vMFUbmrC2ZbR0Tr4zFztYqlVbGhNgSXCKLqh4HIPWQ8vWfU/Re1+M4oIKxIVN
	 1pFifMOAGgYpbl8H/HISHjEFb2lL9OctVtrOvJwgHZpNb9VlVEU33Zlf/JNN4JjStO
	 xMkSU7QBJ84wJ5fjPaKmFRXL+GTviKde1CpdnpYZOmccfXzcGu/0H9eHW3jKbhC0Xo
	 ewFEnFSM14uh5/d8Ak4V4mJBHuHZJTVaWHCqB7osx3X6q01lblRnyBzfXB3OTp6gFi
	 mghAxmejn9X5hDDuiOVIfgH2xKhZO3lFjDNaq7CDK4VmxKD7Wtx+ShjB0dBKfqCaeh
	 TIQZ+j/xCvN5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 761E0C54EBC
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167295548747.5917.15353733985175918336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed465cd981326415d72140675447bd18456ac5004c4389afc64e0995b4d9f0e
Date: Thu, 05 Jan 2023 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672955487
