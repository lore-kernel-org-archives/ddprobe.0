Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF78881F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82380C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671349887;
	bh=sEWY60AV3CIupPySTtOZFLSdxmw4/OPnXPIo4pbzkNo=;
	h=To:Subject:From:Date:From;
	b=n1Qo6rxle3uD0j3JQ5kojDl21Iso4lX0Kx/PLaqMpKzZXrv0yCloImZJ8oexIhUDN
	 qmbSuIscVZ866C06zzosFJ3CLQG0jWGzI/OrSK5g6+l4m3NaLTlaRqztCI5QKYx3kO
	 0fB4SMr7PcWojYXP34Zc5h363EzCm2lC1a9BBt3s/IXtxF79YAubGVWQI/8ktbQCoe
	 bii6P+Iv7g6ZBcA9LIZtqQEavlHeaV1hu6YjGrMX+ZyTurJfztiBSLT7RaEZI+5rZ4
	 cCbeRiQ4RlyXt7jn/CwbevF45Xx2Pqoqs0dMN9GKivQlsVZ0xKOSsiny2Ha4pkioiR
	 JjfvH7hVV3pjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65633C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167134988737.4244.4104088566389977607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd8c2b1236f32216242c68e8379429dcfbb156e194c0d532503d3c92a2c63e7
Date: Sun, 18 Dec 2022 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671349887
