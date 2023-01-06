Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E14AC7B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85E1BC433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672983087;
	bh=DDoPLaeWEDYawj2HR/JNg6LdeUULpSi+Jrle17U5cz4=;
	h=To:Subject:From:Date:From;
	b=PRK7/wfxdSzrvzCJUGzaQwHU5/A5qkLeL7xqg4jyfLeDXWFM3qiMS/r4qA4093irw
	 m22E68GWcuJcqowsxG6YPQ7ix5Q2mqoGWBNr8sJzv2i/flm7YJc861qIo3lsfiBj9k
	 +yrji7gJ7apM+hMIKwn38WUK57X1/ZUcuGyxbcUTqVlXeI300MHOVVYHXZRYqPJbSn
	 /DiB09iVQoeRugfhNBnmxAdzxxZOvuPKFF/zz2u4R7ZO/+JE3XLKxt0juCZh98PfXj
	 5RLiGtgVi+gi9ABy2HgrLydBO4e9xRaTHKN74u2ITj6Jz256Ip7nzRNlIDHQ2dzLVd
	 oGYRm6XBeIDtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68BB8C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167298308738.32052.6343758700791368871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f2916d86a56ada7c6549c27dbd1ad8028a242535ee481528c5407ac7b615e0c
Date: Fri, 06 Jan 2023 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672983087
