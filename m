Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F13ECA52
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 15:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783871914; cv=none; b=MRmoiV1hUAzBAnP9+tyy0VKEC/3ceohtrBTPl/yApWu3VWOcOfnyTI7WZmmcTyJUB7+T6uKsp7GqAH2z75mX1wyrjz/kaRoPhB7j/E9T8neV8XpGsumAxOM+rSSTe/EkR75xfHsSkxKxBO6T0o+H3RLPAEQuetNY0ePAiEjUkDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783871914; c=relaxed/simple;
	bh=qliYe4gHbOkFpg+pDTgdHYslWk07IkfUh8OGO+O+EvI=;
	h=To:Subject:From:Message-Id:Date; b=NHAyf2cS972OUJh8vLkjPc1t+4NuXekEIc/J0LV3OJ8XWJn6xqNajUwQNSoItDrFb4UkiTFDfYFfyA333mluTe8OAcp+EwC6pAg1ebxImknzmgIWFPS5yxCXdIXGTKweu7xYOUdXx3pNEF9eY2ovGUNW7N7Vy6jQXipzl9HY2yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMZUs37F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMZUs37F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1B4C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783871913;
	bh=qliYe4gHbOkFpg+pDTgdHYslWk07IkfUh8OGO+O+EvI=;
	h=To:Subject:From:Date:From;
	b=HMZUs37FfTq3lSCElj5JxjkuGkdYTPlzvQiBKTD6upF0HlFs2m8PFGcwsF9Pxn0ww
	 buDf49rfrzwvMCt4mpSISgb3y9UXutIK0Antjjsm/qOZfLCKjzBBDkzwT7KpU4RIOv
	 xHkuWDHeaO/ufzCLRnGUZx64YWI7zdYLdFCEKtoTwHm3e/vGarS8oLXu5iFk/xvxZr
	 ixeaYaqpGbiUIEnZ759MxjdyL48OiC93N7nieQaxgtGQrFXDOuxlC2gMYyVfTkk6+1
	 ijITQKFSr1rozVEcD00hBVC2j6e33HpMm8VvvRigXpq63FqhMhp9pXfjbYNJRKOKYr
	 8Xbpm5Z+Si2Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DA0C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178387191368.24614.10255570040120504648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf4e747714d8273f5a9736b5450f94ad1f80ebd3806f48cbd184e9a35f0453eb
Date: Sun, 12 Jul 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783871913
