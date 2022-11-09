Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC2B0EC0E
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D9CAC433D7
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668014454;
	bh=w+V+j9pz08bpYifSLkYsDx0SfEPSgYUAbmDmtTWuUF4=;
	h=To:Subject:From:Date:From;
	b=IvEEqAqpDlq7NJxjbwjDyMU7Fb8V9DZdlAVkPj7YKVT+AkftMEf/rSizZbRRiKKI5
	 /Ph+bj4ujbl8MDK8rPD5hfc04Z4bRcKQb+POsfHX8LdYqEXOQFR+lRPego0WqYPmxm
	 loqv1cGby3K4qRymqDThxhspE+zMuFgWhAofePU+A/asIGou6YhM/fnP7Lw1mfhL6c
	 7WtCurFvmWFVgSXxrHJCacjYEX8w+CAh5fhbEz0d62qJjqXRILBPgm9GS0l++uVHFB
	 dPuv6Nviu8rfB4e+j49D4JG7lHNFLQSwA6jshuu37/yUXHrpaW4go9uUcf5XtdZ/02
	 vcTKKwWfmko5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51F6CC433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166801445432.27538.17428719440979741860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d47bb60c5413fe7d5254852c1fd7f61fe8ed002b93ae09472664a991a75efa66
Date: Wed, 09 Nov 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668014454
