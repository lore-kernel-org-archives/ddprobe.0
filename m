Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6B312583
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 12:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 776E4C433D7
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669723854;
	bh=jBLiFFJpMpjYh4mwCj3IL8jaNZCiBUQucBpE5v77dxs=;
	h=To:Subject:From:Date:From;
	b=aYOVlM/C7Ujod01KL0IaZQ+K1mWEmvI5UKnNe2qe0V7vzbSGr/UPkjSpZ0LstI6xw
	 JrwVqpMbtZfOoqKWSXwdeqJ721izsr0Hsofsnv+IO12X+8qhef/owFfd/InaZqiB7/
	 jFG/0mLn6zeOEOEH0G5Q64QktohRExOQnyTDYbgYQQQ+utOApOqhnb9THIig8wXCWl
	 cqHeXhFiATVpnAuD3ZjUV1Q6yOkC1QUvXeEmibZ09G5Qe1kH8iJJWhyQMAujTn11PI
	 3SCgOmIbUjJ0pwmmnVz6banByWXzyvvbN3nGVXqmB0AnnnzDnw7VnH/bN5eNQ66o8k
	 XZp8C13wX7Bag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 567DCC4321E
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 12:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166972385434.17226.2060686707798399838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de5e30d603ea988d8e9cb1148081bc957d43f2a0c6152bee62760b5bb0d5a19e
Date: Tue, 29 Nov 2022 12:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669723854
