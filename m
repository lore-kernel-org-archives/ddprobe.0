Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC303222
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 18:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AD0EC433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669143054;
	bh=ZAikWdc8iWJUDr8XqvcPeLv6i/k4M1ShSg1vrMfe8HE=;
	h=To:Subject:From:Date:From;
	b=sM8rmUjL5jgLL9pLzKxxa0nfm8Ncx6XeNdCME70WktpRanh9UIcojkb4I1ht8E7q2
	 nowfmIPQjsgSOl8RjX8wHpiMmry3XC9HqD3vWl/NEC9vrBymBpRdYmyp8iYVRlvj63
	 lbfgLCLBnfENdgj3oxj/XH4n+8ujTNtB7EsMgysOS0G0FGSE5IF5QH0HEI3JhBdOeu
	 8LFAjhvU5uo/7EjbBjjKXj5z5Ct617m+YY6OY5cTMkZht9NKV7NUbvQ7lJNnNa28Ed
	 gVHxduPibwXUb4uQSjBZ6MpFcweTfjVHVnepoec037JOcXHw8ZfrZACnCtSKgNmKSb
	 soF+Q+UgVAm6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ADBAC433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 18:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166914305436.3603.17715956658418158283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8849c6659bea10c6b24c6a3f5c000244e3c9e7ba2504752563dfa97e4498a779
Date: Tue, 22 Nov 2022 18:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669143054
