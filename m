Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CFA1D522
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4NF61mW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D19DC433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704304696;
	bh=MBqHrYgFGAzAqiJuvc4HQkdznOpVPgFhg1jtH0S7MCE=;
	h=To:Subject:From:Date:From;
	b=k4NF61mWjU0/qWV3lME+H72JGFJ3gv4Ki3LlrWmKp5h6xU16Zj+hvqdS6QM9l+0jG
	 J/DF0kZDxQPhsfv1SucHJraU76uS7FqZWWwEiY6FXMDKhJZY4Rk36j3Wx66q5EWbuF
	 KFKHPCzQ2dDnjJAjHKggxNh+NPbRJ9mDTw1Q1GixEcMxwWxzPA0oXUJ0omxA0YWM1C
	 WpI3YqZxjGmypMuDWxKrao80ZGXDJXkNN4d4Xb35rjGndT+AwZ4JjWKyQh4SMV0qAV
	 YIAFX9TbeBJYxS+flen4LX1bNMRvyXtcaK7eZ7dgcb179TTtaeSI5scmlTpB45bzcq
	 YTEdQ1kd1Yo/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 731CCC3DA6E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170430469646.12344.1780902632401756068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53a06004790277ae1bd858317247618174d304250689b10bb29479f74b831b3e
Date: Wed, 03 Jan 2024 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704304696
