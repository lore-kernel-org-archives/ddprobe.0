Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DDD7FC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 06:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7D5C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 06:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687587188;
	bh=ZUCkOvf1+B0urk4qttFAHJbiQrD4aKa/QoPZWGngiOU=;
	h=To:Subject:From:Date:From;
	b=YiI5XcWCwF6CEGriZQLbwFNrUpbulVm0Qpib2kqD5tYRSiLAHmsxLoYHXvhdsWqkv
	 cLhjCTjkQZHfwgC4qtHUDa5UFwPUSQvGpzkBTNjnrxu6uJGFRRubm5llcv8v6+GbG1
	 cnc96CXjo42c8blGn8LrtMkHk8mUmjutgF8SGgGgxnNHkL467AEf09i/NOcIgIfb38
	 q2LL6lbTtW8CwnGsLM71ULdDwwTJrlMEEjR2L0FW91HlEBqDhiUzX1EdvslOaZVTfX
	 biK7f+gaPNCx1JcBhdYoFF7deEunzikmBYpNNz9HwogKP2OyeRc11Vgdf8kfNJ9AlO
	 OjggGp0MuRGug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3957EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 06:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168758718870.26142.4437173849327070140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85d31f8e5931832d96644fec50c69d30869fa2ecf15c415332ff4bf059f07fb0
Date: Sat, 24 Jun 2023 06:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687587188
