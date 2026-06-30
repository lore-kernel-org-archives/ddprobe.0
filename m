Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF6F38D40A
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 03:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782791914; cv=none; b=IJj1BrrFjZRr2Gsy/jGqDXmIDQZlXRBHs3mOvNst8xkpLmh+IPA+/rQBu+aXfu7L9KUQxVayvbcpZx9aVHmOGrFfge7OK7crUVKKwFmGEQlsWBLFTWDavbBIi8KU5W7uD4OLfy/4/8PMr0wEC5F1GnJOLzmPG9gsJAjdVB4pX0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782791914; c=relaxed/simple;
	bh=Z15ErX1scYdisq94mxosTqxPEFc47tOUcxYL5tCp5DA=;
	h=To:Subject:From:Message-Id:Date; b=YfwGBGou4h2gT0bqaMCc+GoEMOgmRJe6adfMoXwDGPuSXYNsW8z4SWR07M1tPafcpWDQXY725KN7lMMIKRNso35kS1T1D6t05loOy0Qkp6jy8oNQQJv31HvLHE0Xr8LwJFtngstD2SOUcLiSWUTb2DfiLBGqksx5UDAdgW4Xj3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIX72QBK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIX72QBK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF74C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782791913;
	bh=Z15ErX1scYdisq94mxosTqxPEFc47tOUcxYL5tCp5DA=;
	h=To:Subject:From:Date:From;
	b=rIX72QBKPC7fW2SZEdLIeYO9U40E41EvLdZvZEAtYXyuFYb0ue7r3xWH8fnSQlDx2
	 dEOYKPuudu5NGdXI1wYuJX2JARGDKV/9SQyTS5t3RTvJPZr7riP2iFoefPMClAhpgM
	 NaRps4gyGV70dMlHO1EG969lFhji23MlgYm0R4BPlDn6hpmGacv+XrGFPyGFgFevOE
	 TP9vkCVh+iSVa8NEWwxE3Ia7aUCq33DS4MU71Le/Rh+UVs320A4+LVk5Q7eigGsQ5P
	 DW2Xl/rpBKLHOMdesZXigGFnhYxYvS1Xi4wkVsBB5tPbmP2zcwc38CcCblYtOmKsoO
	 GrelwFtUIj6sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90BCC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178279191368.15451.1886952740498254816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff065fc7f145197abfa3500cfe70dd678529789d96925dd701fb99277f099a12
Date: Tue, 30 Jun 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782791913
