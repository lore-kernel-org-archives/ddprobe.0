Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C718D6D24
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E2EC433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672258287;
	bh=CTUvw51ggM5efwaFnQ0AGwvY5LqKAcknq56Vbs87VKw=;
	h=To:Subject:From:Date:From;
	b=BRIVgGa/hDYG5apODNlBR5wLBC+bN8n3PBUr+uwajJbJEAUIa9jL/3NqzafcfAQoV
	 UQfojw45y4QcC2O1jFxbWw4c9UQ2z5BeKaLMoDohF74Man5iNShk9VyglUILV199Dh
	 KdbH0zUTKyoJr6MyM1xFutPSxwyNBuAxN5xVhvFNmq1aQt1mZ6U6WKXuFJ8JId52ON
	 wJTJHat3SgYNtGjH/aKztBuluFBMu3DqGkVAf74lHS+49JlXaLybhWVnGyLKFN6M64
	 dtCtOHiPBETy8tU+T4p9Mhwp0CgwTNKTLGXmgIlFl9QIDeMVBga8/jY7gCUiynxHHZ
	 UstGQhYzg/JmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ECB0C4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167225828738.27417.14567304951237506319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea32193139be8009f2d2655aa641b04f1c01a9b17581f9abc92c6666d65406b
Date: Wed, 28 Dec 2022 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672258287
