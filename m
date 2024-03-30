Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED3481119F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711838297; cv=none; b=seMndfb4YHwXmR0XPdEo4stqIS1GJGPAkz5fKq66IW+5GSAZG0LUeZPkHCjbC1jqrktShV6oKs+oI5ZhUTBQXq0XLUiBZzGRt57PDPgwMEz16cGzLbAx7PF5yC9L8CiYimaX7EksfbfrFl0xHAM07rMSon8xE48RE4BDCvPd9J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711838297; c=relaxed/simple;
	bh=thmuLPrIYxbXPYyfcoh1u0jLoGitxVdx/T2JYWP3CkY=;
	h=To:Subject:From:Message-Id:Date; b=ujD1nxup/BUSRo4fFkZHpYVv+y6EcmTkNjEsANwj35WDH9B6w+91VqcHY3g8845FfhrI5wygoJgEuV/VhYqmEF0z6IPsNn4Cb0W8ojPdFn1lD6d0T7mO8+Cf+2rI3twCvM2yqTtiF+K8iJ3qTIpcNzpAXno8W3WcN7JEpxroUvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcNvb1VR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcNvb1VR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BD6DC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711838296;
	bh=thmuLPrIYxbXPYyfcoh1u0jLoGitxVdx/T2JYWP3CkY=;
	h=To:Subject:From:Date:From;
	b=WcNvb1VRuJcuyI2lfQdl7WAXpfEtz+XpopdmSBO8utYXaoptNQdZJay73MW4FzVut
	 C9DuXJK6B54IV5Nx4qoeIuuC5hIlaEr/+KAvzFbCUrY/Q4NXOITHj63vs51szumHvy
	 Fi/yVm+FslRTkCLThbfqCP+8MhhO0t2IQ9NgAUIMEzuzIjl1kJ3Nyae3Mkhtapvt0E
	 gqKme/Z9x+gHrTKEXVOH0rJ6E3Pwi+WORyUU4LWo25cDbTDfb6RxhytixEP/mLmfk0
	 /LgOL/utpSLPx8UpWQw+mBakek6/ckrKxh3FeS+GFi1u52IMKR/Mmyle9V0Uv2HxvE
	 s12VHQvg5vzuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6805FC6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171183829638.8433.14416908169876021508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaca1827352df5bd906a078db68c5954b8b952da2a0082772f96ddce928e66ba
Date: Sat, 30 Mar 2024 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711838296
