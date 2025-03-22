Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319BD847C
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742656194; cv=none; b=Q0Ob2Ompw/yeYwlQnXQoXm5qHfkNCRX07E4psi/CAgG2dd66IceQqK66yGOntEOu2PUDzBeJMZ4qidz/IBuwowku+h7NhNbDOH9MChvh8/zrcSHbFnyP9wyezOTsP9J6e9mWaxhDTE5kBp+QQKRiW7lKSu4Eds0phKAgEflUuWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742656194; c=relaxed/simple;
	bh=5UrKo48kME4J6MJcE7RA9oSbpcDQDdxplTXRv+iteX4=;
	h=To:Subject:From:Message-Id:Date; b=CnqBwX98Lfz7kXMJuyF1QyBLgTQtdOF5Rm6cHjMpPjTmIofAiQDDECCPBiiiZ56PF6/0a52VWIMUTJl9emPvqkh8Eec3gAAo6dGV5qijwpJmOKVRjnA18y1THQyX6mX1Aco7/S016PTv/9XDnd1721EyWI2Wfgsg3frPZrwIsro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/ATBmLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/ATBmLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDF4C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742656193;
	bh=5UrKo48kME4J6MJcE7RA9oSbpcDQDdxplTXRv+iteX4=;
	h=To:Subject:From:Date:From;
	b=K/ATBmLUyAcmBuEnf8vH3BYjt+9kNTsPdvp7Ykxf0Kya9f9GR/vwfXO0Tm4XYPfJC
	 ZlJO7yUviJPAIx8KCXSl5mDXv/ZMgdQWjVNLZNNh2nuPIuslsttADDt1imsQdMaJZU
	 cvFIoK/ugdj4rDmKCvPraSOLKRTnmWellR6tIu1GyAj/FFR1HrANfx6DDdexyj0emI
	 6BxpmY/u2PzLp8Tfu0ViZOqm+nIu4K3iNA94HZXgNMVTHPpQPbDDbg+eh4i1STsgOn
	 txWV7I0Mnwaaj594e+Jwox4AeL5A97nE4/vIyTJH2w9nhi55U9tW7PDXZwLUp1BGoX
	 7JIEwGyb92tzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961D7C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174265619358.24964.18373911675746135865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c676772cc7f7ae9054cce2cfef302509388fc17455ac116b485f1b7147be6efe
Date: Sat, 22 Mar 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742656193
