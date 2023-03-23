Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A3D17CE
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 04:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3847C433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 04:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679545145;
	bh=Dw/RMzGHoR9hpi3O4u433ctghpjFBsjE8nr6ZdjfaEk=;
	h=To:Subject:From:Date:From;
	b=QAlvQ1oeuPOwmZj7NK8yhI4RozSDKRb1h/HkW1gPva3y4V24V3awVbuhMQuE3Bthd
	 /76FDN7dP5GFcQ+HD191A3xc3jJuSQT3fyPoICQs8jbW3eaTPbWR4HGvCsbkSkPCuH
	 zXeY+JDrGfpRSLEv1dP/AqOUzpnnJs9mDzyKAsIZtD8iTWBpO1V8kPC8OyK4IJYMsw
	 wYx+cmo/RTiNtXvFf6EYFZGslfaqfgCbtPxg19EbmRIVvE3/UfZIAbtuYHQGxJzVfe
	 qmgz3YCUWap2QbkMun8McKr11eTHOduwjr+jGdDYIXCY50AVI09wa4z6HHLi6NOFBC
	 cEE3khVUuAgpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B878AC6FD1C
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 04:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167954514573.29490.17357470256717589869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a27e9cb84727844782f46d9c12c72ebce54299bd9bccef852d3ec436425978
Date: Thu, 23 Mar 2023 04:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679545145
