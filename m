Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BA029ACFC
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771228494; cv=none; b=jWEM8FvUbk3P90H/9YaiQS6uU/qGiwGMerM4wR7fuc/56KrnERiJrMwIu4zzcGG5JNMWCdfKYUuv38JheqhFa1PrS8YPTyBFRsjv99/sjcMt+yVyCrRtLNFCeIS/6KiptZHOMy095oVMyYgmsKGZQvYaZ7aGoYvunG8SsdK+VgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771228494; c=relaxed/simple;
	bh=2jL6YxOj5Ob3JSJvHgl4zfM13mo+g9vLTwGBNoxdjMs=;
	h=To:Subject:From:Message-Id:Date; b=ZqgrF9nueAiRPVRpxxFMGG/yhTXeNfxKFDG3Buc1zJR28goLK2wIXfjYkLSA5r/gT5oEdviPP3ygfsKklBwZKiH7QFEgjyBrIlWn0nfr2ORmMmdl6NurTDpTKiagGnJgLbDqBDCX6+AJysN5mdIH8Kd2oXu2ugOwzS2G6pgfMwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPe8RCuv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPe8RCuv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21C9C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771228493;
	bh=2jL6YxOj5Ob3JSJvHgl4zfM13mo+g9vLTwGBNoxdjMs=;
	h=To:Subject:From:Date:From;
	b=bPe8RCuvNC/I3d92MeFh91PYhBu8H1IVMf2/Ov8C5b3iAh/F2DSX+ZU894CfbJLHr
	 qifQCbKG+J/fuyQfWV0RN02K2Sgt8QP6/lV95lEd8SSLxDT3IWtA+ztAbetjAuXiKg
	 ycIDdJ3pWNEVz7aKAkNqnnUL4CG5bljXLxslzP4VJYFIXCMf0rxApem9mKcw7XUzrX
	 87jN/tOetmucluVTdYGJEmQVr1ytvjU7zfLLMuPH9C7dEq4wTszpDqTuln2vQqC9FE
	 rQfgjJPJxXkR8yK1LoECc0lxmLP4gmP+jtZYd5rDc3Y9ftJxMdzecSFDxnt4fI7DZT
	 5G+HEgRUBJ+VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915F1E63F33
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177122849358.9773.5783368455980095489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa003cce5abf5c240606a304a9493166811021f5e8fc39d4fe69a0895f6d8504
Date: Mon, 16 Feb 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771228493
