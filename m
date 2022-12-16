Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA88B259D
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C937C433A8
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671214287;
	bh=Ksp3GepOvn9O3bwXO+qnJopIlDWOz5fe8vHguKX8vho=;
	h=To:Subject:From:Date:From;
	b=MxEpyyrcm5QVJh8f7RxqjEQj7MsFaUvJQQ1CCXeEc2lkPzj7ksGC7z2MH4SyVSuh4
	 x2aWyq9lvcmBXZHnDoZvpHLauNZKvjFoD0uRhYrsMeZGWcsyh/QjTVNh1khvWffenk
	 KzPNtvrvDsJ18zZpQBjlwfRU4Ss55ld3RrtXngabET5ei5t5mf/U//uEHkxn1dnyb4
	 ZmOyfBbTeHjHZ8dEJClpUaPaXo1NoRS9zzPa/kwwOABgB4l/PHWxn1tRIX+TEG7JJ2
	 YrjoPChGrIBSAqzxc/TzX/PvL5IzLmRBUQu/fY1FIzaNxrChQXFz1FkU2wl8b9Zfha
	 4YUtC7PQoRJYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FD82C4167B
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167121428738.27063.4429469419252501537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 711f91ddf2c2fa68820e7cd44fc164d51048c08e724e5711dbd7b1d94fabdcf3
Date: Fri, 16 Dec 2022 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671214287
