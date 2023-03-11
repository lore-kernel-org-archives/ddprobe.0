Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5587B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 18:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E848C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 18:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678559166;
	bh=A70wnrNHyCzUxdclPy7uJPBDvTSxa+/3QwG998yeaqc=;
	h=To:Subject:From:Date:From;
	b=itfp7OFeUf86cO+PCDZu/1TPB/Z4XtfN6QhAKFoFX/k1rDHnJ3M1sk3mCew6hFngN
	 b/VmqEuWPEAJFhyM9XdD9lQU92lv7E4Ydz1PBm78as7eJg1aAYTeZKIcXnlmCn9eq5
	 0FbTG6pxSDHd0BFABc8mkVOs0LzuKFvhza2RGSMQWRSjjxchwEjpe8TEHDR+H/Zhq4
	 +2/c+AUq54NaGTlfeEKSs7aKVG/xoRcw7bkrck7+/s17kvq5NmlsHLHKBWdlnviY7l
	 EGp1PbIPzVf9DIdu5e3yRYKJPk+qUomGvoTSohhxZrgdd96EcJmlyylp6w7NGF1OMI
	 4yxEw0RnwSRHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE150C6FD1C
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 18:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167855916589.32517.11404356572064301245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b51c8ddf4919622c68467bbce0d214919c11dc20025050c72931cf82adee8ef
Date: Sat, 11 Mar 2023 18:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678559165
