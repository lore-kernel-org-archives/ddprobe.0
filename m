Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC3421369
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89D92C433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673510487;
	bh=72JPSr5OvJl0Ievkoly/uCmuDfkjYyDlZRSHTFwwYMI=;
	h=To:Subject:From:Date:From;
	b=dnixvoxJ+z2L5oAmZWjI2WbTh/taSE/CdUDRttB23BBgP/4g3HeRHoTwXRQnc/RZ9
	 AVlrdOnv3Zl57Kk810hi7JNeQFJxvNs/glRXn81xePrZudFrupvh/Grbu5veY9j4IX
	 QaEzX4aT0jftmlKQCDG3bSZ9k9gv+bxWqo/ml7ogrX176RhsNuZB9OCIc16ChdzPZU
	 OaAPfACd4UCHbqkwPB8p7uJWgzEvgQBdBJmHOv9EMWeTA7icwMtpQRIgGIVkJDkWTL
	 7ScNUPxUB4Jse9/x0YEp7sP3LaDca5H32vHI4L5tVg0jQs4ERXtsTmIPavAw3Rv3S1
	 yIiksySJcPxVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C303C54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167351048740.13995.15727081737210938037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4114a3e5fa86f62fa9af4d92235d549cc6f801cf33294a45fb372057eabd84ac
Date: Thu, 12 Jan 2023 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673510487
