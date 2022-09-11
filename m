Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBDEA7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AA2AC433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662868253;
	bh=B9yL+jfleLC6ZhpWqBPcU0C+7PJSC9bF6uB+IFQqFhY=;
	h=To:Subject:From:Date:From;
	b=FG0EQDvbtOS0uVwBz/NpWfbOMyKBxAwE2V/SYhqtXQ1XqwCa0UWUIbaWHD3UWo8RN
	 UKuUjZ4DIB4Apa8/fOWqzarhDJtKrVtgExmdI+TyxPQgFlAPSkjTF1h09oICjtkT25
	 nou82rfZa+HJ/+JmDfmDgOZpVhx5JV+Gh4G7vQ+FtqroNAdILGqnzVJtMmdU437ZtL
	 i1ku5oBgbmnbSAT3Iy7REj2HGbup/Q0/rRH8HVM9o4UAkeuBv3Fi3OSbcM1RwuonA8
	 KaG+W73d3Wip/WfGoPQSf9RJV/RWC1MySSYUKa2O1nBXtep0u0u/f1SfUxp1BIbinf
	 75RGgjZhSMAeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51678C54EE9
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166286825331.9765.2519109251609353543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac008a98e58b8f2799731cdd74f84df8bb2dca72e86f32a8e605799379542c2e
Date: Sun, 11 Sep 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662868253
