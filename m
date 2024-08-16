Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F2A7DA64
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723842954; cv=none; b=CjBnyMMyQGU1KmdC9yD7CeZiZKLSH9TO/u7SyVSa4iXghkQfHEAUFrLPd8+yNFSyvxiTCiPmaGVRBidrkmQYCXAZceXMkb7aVCOw76yVaeFuAGz662+ElZY0qGID72OE33yHaMIPEhauT/ZM1DmbCZIJJPyiDTplpObCt9/o5Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723842954; c=relaxed/simple;
	bh=Bk/IFSnLW+8oVXKQ7FmB8KpJNHZ8wIBr1XcX2NOZuIk=;
	h=To:Subject:From:Message-Id:Date; b=Q/JajdS7Gx0OEgq1T368g/dujQn0CQ2gl+NLF3edyxmXcZPaR/mskn7G2EpgRdpaFL71GmfNYMQGf3rOqXR58HUE88xZOCRLf+qzm1K5jGbjGJQOKVKAdHJ8rXchN3lp5ieI8/eUrFS5uiDu9AIERqrR+XsoW9jId76kDmV0DgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVRGpGuL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVRGpGuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DB2C4AF0D
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723842953;
	bh=Bk/IFSnLW+8oVXKQ7FmB8KpJNHZ8wIBr1XcX2NOZuIk=;
	h=To:Subject:From:Date:From;
	b=hVRGpGuLpGZyAAIuD1w5Qjf1nhRkhlSp7Esto/dMiTMIVciBcH8otb7CeOngBF3VW
	 d2WTCPsH0yOkctGQwdKz8JkhVpr1VG3qOnS3ELxpIT13T1/Go2Jk6Y6X9g4TEIqk03
	 Ql13md6VKuK8OuTFvUrfi4CCfJxiwZWt+PFBsEmSE3jcR7DL2jSn6K4Tv9bJkJjEC1
	 MA55vR2teNbBN1kKhJgArhT/gC9AAn6riHilrOp3QbrV1vNCCXMWGFa4CJVudwM/+y
	 jxglcBRF5PLQjYqrwDwcSoxfT/Gz3uHoL9SbKqMU0kuXMkF7jf2qK3pN8Cs9ilaKMy
	 uJGozTpbjSWlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97410C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172384295361.9423.15660042540215485471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dea5bf03c784951b45a8ebeb1356c8015ff102b6a7851feb02ada68427ac8978
Date: Fri, 16 Aug 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723842953
