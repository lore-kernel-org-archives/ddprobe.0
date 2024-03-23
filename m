Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D941DFCE
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711236497; cv=none; b=d+f9OUiLe5O4D1qthcoF/dnPeOZKwZHUxxHZ4XxqpO5cLTtQvXKi8potZ23bABVB+Fy37CZRKQLv6ggSOUhqlUHXXOmPWV+3nmCkkFIRD/IbcHe6sXqtU3i1cIzJuCwIzoD8Uqkmarog/Oll31xiKXKUaQuvgwikGzYmgRcZPEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711236497; c=relaxed/simple;
	bh=/5jEMW8/oQ3Z3JhNBSWuCwFEhkhkyw//qF9nnqFOchc=;
	h=To:Subject:From:Message-Id:Date; b=mXGY63j4FLV5cZQweYFNAPF0h5/IISD7FUxXz7a6SVYe1QleVa4wobygclJ+q4+QkZ0woswC9vXGDwmHx5xbA9tEFExBPdMt7wxtDY/3F/sVw0u21v7zik4qUBAF1WH489rAVugzwPVUP5w3BJz0Fx0DWq9tUmVQXXfSXFP3ysg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wzoxzw67; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wzoxzw67"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79F03C433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711236496;
	bh=/5jEMW8/oQ3Z3JhNBSWuCwFEhkhkyw//qF9nnqFOchc=;
	h=To:Subject:From:Date:From;
	b=Wzoxzw676zPZTLWEq//dhLU+EhmmdNyYXT2onnj8fnVhd1kF/aLwS53Gzjca31HVl
	 W0BJ80g/sv/26TeW8XS2JH8I7VMV8sLfJ1Cy16bOvMZGKJiTXB1qNFE9oS7/1HcwBu
	 /P9llJiicb3lvmniLRizvGVn7AZjBJjtoRndEbtkA/lFUP6Qzp/AauRSt0oghxvKKJ
	 NLcr9RmUlboqGAg2q7Q2oSV97QDmg0La4fGZg8EupJYfOEfDYKLcaViauzvNR5hv4e
	 NKWMOVMuomKq/eBC9MruDns3K0BFpvCYUzTx3XV2DEzTUWD8PgGQ8xHkEQxhHU2q2o
	 SIzxxWMyZSYng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 677A5C54E58
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171123649638.32491.2341160824844993425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a05fd4d531cfb2584c7028efba85ac2ae10f48e9ac44e537270dfb5b70b78da2
Date: Sat, 23 Mar 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711236496
