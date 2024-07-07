Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59085E54C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 09:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720343783; cv=none; b=AvMFm9vU9FMUyKY6ufLKFUp/6Nk/hZOVn1uO212pfbipR1ClHdnKiS7DE/Val/2iZJBAhZrir1RbEFzBNhBzjmTLGKND1Pdi9x3oKE+NeYKaZTOKfvX+vwEKj7DQtrXBOCW2CgdMrYRtOdsCCCMVbTYFsRdq4JiVviMzJFsbhoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720343783; c=relaxed/simple;
	bh=TGmP7xvrdFylGqnF6I53kBMQYSfEUctjxL3is/Td40s=;
	h=To:Subject:From:Message-Id:Date; b=ZqKD4G/1Oi2rP4CrD/4mUB2Ph6Yy2BxURs1lxMb/fjAG3iwJEJPYHrj+zftzBPQlFnPPTxIgnCx+KMMtu+NYDqgXbXjbRYAEYCVO7/feRSolzJsQuuoXMBK253ujQaoI6HDmzcCdtFhWzBRcVzJek1KnkBVEwKnrFMahnSTx8QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRLmS/1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRLmS/1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8EE2C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 09:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720343782;
	bh=TGmP7xvrdFylGqnF6I53kBMQYSfEUctjxL3is/Td40s=;
	h=To:Subject:From:Date:From;
	b=RRLmS/1zsVd3fNeSrW4HG+duPJV0CsFDBFuuOEA9vyD5Kk/kXoXP9lgqyXQ+dk3oR
	 UDGg4L0pMtVZtkvFx4NDwOAEm1qnmz2Aoz8p6Ok0JF+Vt5dRKKeOXuZPqpfIhbXAp4
	 vKCsvJljoIQYJBNK523GFLTk7ormcTlAN1QksgImVn7SnaF+09XGfIjkCDxMpy9p8H
	 8PMcWq4IqUn8qLUbYiZrlEnwtVMazJINSLxnUYQ07ydnqYAKzFz1Qrx33DeMB6I9VV
	 gERZbv2gRKCG+Pnc4pi28jC4c6q/rjVlVCVZ9YHyE9cCXTiwFNqUQ2V5FvQweViwBb
	 hHRamkHQhW/1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4069C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 09:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172034378279.11931.3795800095367102116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b093556d1c12b53a7aff92cfe4572aab396c160c83742fd9ffb54772e3f709bb
Date: Sun, 07 Jul 2024 09:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720343782
