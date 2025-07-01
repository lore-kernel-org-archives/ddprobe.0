Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BEA61B0F0A
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751380795; cv=none; b=GnklaYMofXHBzI9cf38OV+eULvw0T/A/WPWObngAca+uCSl3a49ec1pkCw9hkppvFcvc7AjG81i2IqO//JB4m6pSnnKsZx4mZeWQpKrz2/tM0URn2dqYMlh0GXjho2kJrHPvwQgl4fb6i/qFjOx+qNmGmEiGelYQ1RfCjQnbQ2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751380795; c=relaxed/simple;
	bh=90c41SINouBK8viSWjlJKBpb3zxuNdseQDWmPCpVFaE=;
	h=To:Subject:From:Message-Id:Date; b=VxLZyjs7grVaW+3TxwboC1vyUSff8r8e9yZQDAlB04vNXZXz2s14JGrOei3Mm0vjIpmVgoDvp8A6LuGsc9a+NY36pxPN8yj5nKvbuOPvUOqyy/4mTVwO0s80Of04S+7LJgKvkCZ0B7GuFjvqe4lrNFhj08Xe+/qryWXWAqwGHmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBaPfk/O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBaPfk/O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27E5C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751380793;
	bh=90c41SINouBK8viSWjlJKBpb3zxuNdseQDWmPCpVFaE=;
	h=To:Subject:From:Date:From;
	b=sBaPfk/OUq/kQ4Gb1I6Ci4lLe3CK4dF80cpZLOwh4tRWTZ1PG6PVSeqSPvGD4TVoF
	 QAPlQ9BqiBbi//RQVwtIC5gBabbzF0tVPdsPKktzin4+buIxiy+7/Z+NOb2gbsWWCy
	 Q+OabOT2ZLdZo8gkS+3MCwTKCgjZ3o19eG2cNb6oof5u9d3xDgzN+YWAH+O+vDYCar
	 9h1whfup2uWU+S3HrCV2G4fkqFm4pQ09kbyARN+/NYshtMQX00Ng/CrKvn3iPfA5US
	 IsAcTuz8Yle7Xha0bttDiax+Tmw3K81v3tTNiuToHLYpteyl3W/4ZnpuYUh0kXOerY
	 ApQbKFQtAf63w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEEBC83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175138079358.13393.11128790791396856241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 386ace89b150ebac4b74e755b070fa3e1b8e5f426645fa72b21ad03581221eb4
Date: Tue, 01 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751380793
