Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D949E1FC101
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776896253; cv=none; b=DV/9emOc618E0/wMaoFVHpvXRz1XsbalSPUIxaX4WN4N+QTwLrEUHRcuHBstE6Eu8oaa4CTl1fsjNLUzsWlUMUzgq8VZnB0mwA1VGs+0HkJpxeGKBNGJuiWFl9U5uN04RArPbWgTa2dxNOpL3Sxajepd+46U+3sepLOEKUpuQSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776896253; c=relaxed/simple;
	bh=z7SB47LxkEXOGRElez+SaB2te20YN6u6yhOa9JkjvEw=;
	h=To:Subject:From:Message-Id:Date; b=X0HPzUZb0DpC/qpldr14qyZL1/BSvxb5TxzwRCJ9oPv1x3j5CP0egtPuScJGrjIiAuK/NQEx4YL+2+zuXoO+D7klGl1nj5Ew7TAzF3GVyvOwPRWS5V0Y8jInUYy+j7jsTxPuQCwcqIeEK6Ryn/IDgDCJA+UjqmWP/0fzS4IxwWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xq8sSOFx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xq8sSOFx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE2FC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776896253;
	bh=z7SB47LxkEXOGRElez+SaB2te20YN6u6yhOa9JkjvEw=;
	h=To:Subject:From:Date:From;
	b=Xq8sSOFxOCJ3Rt97ThxN8HEAkl5x5jqgzUzBdNOnbFa77eP8SHgInLlcm3ODSVVZs
	 nRVLyRlYMFWeGzJfEwJTBM3slCNYRDCJALO80xGotyUKX+nCkpHbKuZch+HPlEVyjH
	 2tJU5Po826F3OoHf42wNnvNasWPTGUJV08875y1/5+usvSn5KlD8UfsfGkOcyDd4KZ
	 ZZ3Nzmt1Bd301MGonO7i5z1q7bYN5BF8hXfRCPBlfTaQOPXXnAxXsqq+n6skmq/FBG
	 d0m/2MA3cTmQoW/2iRJLQk0VUGUzwpUF5uwh04x266vINKpEhx+6ddIy0vBdQtPm6F
	 0RiNIhGVbXZAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD493FA1FFF
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177689625368.8286.6818832280592300573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813123267288ef631272a7fce259def1fae1a6df7407db070992b0d9bbe1f492
Date: Wed, 22 Apr 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776896253
