Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324B56109
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 15:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5DDC433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 15:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676473685;
	bh=zWaOJEuwdICnSgT5ggcELt8fEVWj2UZ30xFToINjt6Q=;
	h=To:Subject:From:Date:From;
	b=vQ97hmaLyPyYqzkcnLKCEfiQDIAfaW3zqsHDLSjgsrGj5EZtJQOQn5NKx7LryXzoc
	 SOA2tqCBr9cJfIlMg1u2Hok7EGgtFd6IPcXDChQwHJqQhVtam4GktqCPY5gRztNqOk
	 J8h/H+F7JZDihcn8chrHtel3Fujgi/mq0sWLM3Bw3MbaenuY/VTjm3z566DbEH5QOI
	 0eiD/vSat/r+DjtIA+waAEQKOTkrTIAX7s1zWCuA0GZmFSLtS7a12NpSEkceUGoQ/t
	 ybQ+R78EIDnSk2XcjkVMQoQTdyzqHK+NOL9mvXOiKl8jMwkvLd70wce8b/9o/6FnVb
	 THDiOKm9AkZUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B492BC636D4
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 15:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167647368573.32276.13340024545590960599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b150ca23eda8adb2d0992d986b4488a61549b92585a112752aa04561863b7054
Date: Wed, 15 Feb 2023 15:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676473685
