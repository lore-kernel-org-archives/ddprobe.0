Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7FF42907
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 11:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 784E7C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 11:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670929287;
	bh=Dcj/7lxU5sFJl/fGyjX6dVScA0KwnPq+8z2Ht3XkffM=;
	h=To:Subject:From:Date:From;
	b=MMNycnPSb0YjSuBU0CQ9EWkYumLrnjEJ0wYlxNf3bvUQsnTCU6LfSd+9Ue5xF245z
	 jFK/lddM2ZeYMlxZzkvYgPgoOkbxxSp+GjbDK2IpubugQsjSRLmnP3bdVdJ/ki9VWO
	 ATb9HHNOpPBGrYaiLx6GarKtdwiG+t6hqn/Z+JcnfGZzfZuRbpAAn5Diy/g2WaBQwx
	 UHSPOqwnXYSHIHxpGDpZyGYU++30T9ZA90wfV8/9T5b3PiGOBcjCrRXwfDOeFWc+9E
	 E8k4/bQAZiyWGXeB5QanQjxmk27L8UPHl3H9DM3Q6+pd6htsy7/bs4vo30Ig23tvwW
	 F/7JfU1s2Jvew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DEDBC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 11:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167092928737.6603.14523440713525609864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb69dc6413c628c71d9985aef58caf090cfd6fd8d5a1211618a699b3e301561
Date: Tue, 13 Dec 2022 11:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670929287
