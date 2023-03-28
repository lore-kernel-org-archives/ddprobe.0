Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D76A44
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 06:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4FBC433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 06:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679983985;
	bh=m4kU1eOMfkXA30qT3voUqj0xuadICWMWwT+67d8cUdM=;
	h=To:Subject:From:Date:From;
	b=fc+ooJ0QmK13TiHYbPZopVJbRSKLarIHvCmLdYNDuU2EBCYYO7rg2a48+R/TUV43s
	 2S3EZ6xhgSuAgQQcEDsZH6qf3bSN0OuqDUBmk/Y49gARjLdKBpoz9LLzP7norDv4+m
	 wXslbX7vl3kJW5kcxOCfG33FuAqpvzAZLQn4WsZxyzyFOSKbEK4Vm1W1eu1FqIeIpl
	 sZur7ctfjsqjpO4hMbgyOuUoLoUDAb84/234riSi+RPS4dXVXOCYvHDC97qH179pSx
	 f0D2J36izZywVdj5uglMi9kv2SRC0g+IaYilQBnZ7dQiYMZr3VUM7+vHuKYl6697Mu
	 Wx5oMrQa4Jp/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B51B9C76196
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 06:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167998398573.2438.14198848001259275435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b1f56546ddd5f19a89c87302e816006ec5da72c8bfe52f2a9bcb28e161a258
Date: Tue, 28 Mar 2023 06:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679983985
