Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E29147EA
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81A9BC433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672051887;
	bh=2InAK0VoqlcWUdjj/x+f/unWzhxMuG5Uh9ZvJZiAsE0=;
	h=To:Subject:From:Date:From;
	b=Fs6EU504WnxMF/hBM2DKoXo+fzi8zokr7cfP84YAH+vfFjVexjfXTd+A01IRguA2P
	 Jui8uQP4zRYzzchDnFHGuQC0yFE0kv8oXYV043kUJv+HefpOf7/FutnO/tLQmtG/8t
	 7qjSwH1A2MuEmajlDVC9QaoJCf0AnkDMR1IdLog5eSJiujfXA1hSMSvrNA55v3uRY9
	 wmrOj4tIYsly/7NSz7J/O3zjAiIRqmlagXYFLVIwBV9sw7WqN3L00X1AaHVC6Dz7N2
	 HdZBgtw4iX0bXhOtCOne9thY8wPGVC4/yDYftmjxC4aJOC549w5+C55LeIv9Ao/97M
	 FgASIndkT2qSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F55C4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167205188740.3368.12951929107507515807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd0fc654992cec888b50e596089196eeeb7df3f2006275e0c0ce9182e97e3ffd
Date: Mon, 26 Dec 2022 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672051887
