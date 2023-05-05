Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420E3C8C5
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 23:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E794BC433D2
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 23:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683329285;
	bh=QVTTH/eKLPVcsOp+cYXwn4NUizuIh9PKSs3lGqrH5h0=;
	h=To:Subject:From:Date:From;
	b=EjXe398bNxHj9ZaWiEDRpjOvfHapEPGG68LQkFPz38Ng1kPeNyD2ymQs6JmNt7c/b
	 ATi0fWaRhLoZ0UbdOiBqISRYI1xxZZ1UncKUNAz5oYvElp9JLjeR91/AsPG9ylC9tp
	 IsEzCNcvP5cgx15Q0ODRxvkCOWhEenhdbIgt4/xh9CthVQ8hBoT4dkm3C8FOlIZDZT
	 rgKxqnSpZ5EME1XkJesckHGtVMbbdYGZJD280kR8tLe3BYVKb65vTzo2krKfNK0QVa
	 6r7xwuAsw/vIT/MYgoXczI+3ZzrWiNxNbxjHz7luIeGsrXDsrm23VhZT9vuk8ShGq2
	 kG+DJK9WOy5Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C308AC77B7C
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 23:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168332928578.24218.2766881951016791933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e052a53a11b99d303de1e4d2772629e837ccf78e2a2face15de49cf5fe9af758
Date: Fri, 05 May 2023 23:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683329285
