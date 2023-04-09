Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E29D185B
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 16:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E077CC4339B
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 16:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681059065;
	bh=ZpNTQpsOIxvXHrGEQSDX1XSeCCQOak0GTWSB4DNa9Zs=;
	h=To:Subject:From:Date:From;
	b=LOxs2GONUJta96ejAjLzsSUAk35F9x1hzxJERQfrVydg8Du6rUcWJTrduqSJatlek
	 0pDJ8q8YrHo+ZWpEPU0VNAHWkYwPDXJd2upp1OWwogN01XUk0gbj4Dm632d+kly1NI
	 bpP29QpxFEf7sZyAeUnV7FF9jw3Vmz2buzTcRxLZW1E7HlHpXdcM4CPQSR2bq9//Pw
	 JsBy4BTwUMLkytdeNfL+9wXdUCUV0TZNv1KMAKR//+KhRRWaDLQToTojhUaFBdQM76
	 84Tiu/YWaAJwGVkB4ccXLcxgHWtNcOKvMUnhWyT5D1nSL/kL+JOPNdSIqAj+KhBAmF
	 tz9uSmmyxkXIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5847C77B61
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 16:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168105906580.26762.10596650605719125057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd8ea18526a017529c820cf773957eb454aef90963c5189065afeaa54e0d74ae
Date: Sun, 09 Apr 2023 16:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681059065
