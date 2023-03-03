Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440081FB3
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 09:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59C6C433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 09:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677836165;
	bh=QfeqShRWPYW15rikpfrFcXOJrNKvz1Y4+hFdImDhIns=;
	h=To:Subject:From:Date:From;
	b=q+wI4q926inp/GB2DVNp/tDbS/u6xhV3nnmYXKeA3qk7OnkZNNbbzzK9LP5Pxh2Gg
	 pnH5uoYVy5AdR8/tZ5NbhJBsYFts74NgeBltuwI3Zi6z8mAhG0LouLhGOwoQssSTFQ
	 +KCzRHxiC6edLA5mXoNltengucuDZjC5AmFlYlEbSOuH9UrOLqkXlL132OOQgfDU+T
	 c/9pSMkYHlBr5pTuY94h8JOISz6QBgqWoK5w3u3lVnFxLlb+XfDzfik3ulyHGHa+6i
	 lCpJWtpMmGOoH33kZByr/SBUW+JRAAhpZw7/Q8sGNSiTVw6DZM7FhSe275vP2k9jGD
	 Dk3utVnwtxIZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5EF9C64EC4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 09:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167783616573.1658.260516180423144753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a158dd038fd59ba1cd10801f184241cd9ed19ff144455da8fbf951b40e0da0b
Date: Fri, 03 Mar 2023 09:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677836165
