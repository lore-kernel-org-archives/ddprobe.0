Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD20D7C
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 14:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88FEEC433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668868854;
	bh=WMasjre3F6FNFs9/J2RHDKyjqOB3bpkdEeh+Ot99fjg=;
	h=To:Subject:From:Date:From;
	b=hoB0uOWdk9hEr3cwHerDGzVB/2W0sGVwAiZpd0o/2qMGVx8W9c3DjTnUNnpjcbuoj
	 nVsFDsZQjH4UA7R+ykIwdwzL+KsucX5GlGq00MacmWF2yFU8JmkWifeEHMfrXFBQyz
	 OHFRqrV7rH0mk4qZPKh9G9YtcRn584uO9nDhpFp0u+M9wgrYIDsLC5k63uFHDqsJ8e
	 6679jSMQTvV6+Ea5hc+tLBukv8ojiVERFkog+CpsXRoVqNgnywyGgMz+OZdWc2GDmd
	 PE0ElUGBLDpC+IRMhvetD2Hd0J1N5FqVRhJtaiyuW8rWQySobhvmd9Hc9zfpmLT67O
	 7ZqkzW2KfutPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A825C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166886885436.26118.6245684981825236206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3103a2b132582732d00f324a515a217f86c162646155e1b6cf529117095845b
Date: Sat, 19 Nov 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668868854
