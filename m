Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A161858
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 11:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA80BC433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 11:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679139725;
	bh=Aj66OiPRaNXNplCtaNF18Shy+qKrked3k+vfdJWXRJ8=;
	h=To:Subject:From:Date:From;
	b=CQWLhmelGjF/jctPphPxkGHirsqDibcTY0Q7XDjVEpmCaPbA+lYasqTfw6wc6HyLE
	 BmotQUXrTGPpkU/hg7QF4knL4ks/5aOJyKCs/nnLxqGXnzqNeZd0RH6juEnUcuMuEv
	 Pn5Ys4Ti6k+QsoeomPVUmXBsM37moqRWhvGwKM0+zvnfMIKS45nSzvSRFiq+mT5o/k
	 0VhBF++iHJUSLGvOowYihauDA8b03zt/9fMTmjtVm1B8Gb30bKba7VKUpp5EgGnTxr
	 Dk/jWYjg71h8DKbecEYJzsmyYlaCziQJ09ig1Y52uUykAvPpLKBvd2CqwXhLQ93Ro6
	 kDbf5yFDWj+xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC094C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 11:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167913972575.1029.16097533651119259681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb2321ab921c389dbd0c1c1eb445e366a64f7928ec58782f1d62472a34b5a07d
Date: Sat, 18 Mar 2023 11:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679139725
