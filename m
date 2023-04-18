Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62212C94A
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 21:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0EBDFC433D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 21:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681854846;
	bh=lnUfMuQDxHs/I7tzkD+qHXKprwER3UCNpQMMDP+PtBI=;
	h=To:Subject:From:Date:From;
	b=uWEWKoCEWzAiijvEJqz8afixdeTfD0dvW+yJArCqyiBmpnb2IPAOFJ0xXFbxJhNNL
	 XAZNZXVOWEr8TChthXn1CuY2sVd42+mYXIll73hd/InLfHEHmptaagzPe2XHMH/HCD
	 NFJN6Jq12nYy5ytwPdIWma6l+lhFEU1xKYz59LmG7eJhLrLa/aNu1En5G4WjZGT/gj
	 BlGKNqXlwcFvzIeqBH0hF5CTA0BBomx5kwTJ6OkVTApk/r7/dwcO9es+2gLi8R+Sf+
	 iZmmHxsU76WQfmCAe5WFij/N5G9Qv/Sa9V0V6qeHj9HhQjoJfoL+cyT7hnt8IaAI/Z
	 +YN5ycbXjaHeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF543C6FD18
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 21:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168185484589.30832.7679814435174648038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3be7bf017981d77f434adfe3c2fb50ab0cc1b207e77d1432994c9acfd1ae2889
Date: Tue, 18 Apr 2023 21:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681854845
