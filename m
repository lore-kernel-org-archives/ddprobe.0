Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A72126C05
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726896954; cv=none; b=gTNbdusR3bRvcQtwGXykms4D+6PCIWKlaNjlaFrd5/LsAvFRvoZFqnLYg1BS5QAanjoy3lgtJrH9/9C+ALUT7g42Z70RKRdV81zfsoP+mVveiXAoJrTElHoNGu04nPwc1VhKBfqItmu/5OaJ0/p/sVlf6SKm9O62FJr4jqq/7gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726896954; c=relaxed/simple;
	bh=2jPPdmBKQSVFcRrTNdrs6/4X3vx7a8UktdWpKo2wd8I=;
	h=To:Subject:From:Message-Id:Date; b=Dqs3fVo34OZ4xaopvYo+fP5iKHRQyAczfhfviQqwyN0+EenZduxT4tE71g50saCSdYsOVDZv+/QjQ0hVeJsp4DRbaVxGh4o94F8Tbj/CF71Fcye6tpP11yjq3vfOnc74sSCkQobk7iC7+PIvb0Mjclcw/Q4ZSJRsKGLU2YxT8/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLHMtnkF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLHMtnkF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6FADC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726896953;
	bh=2jPPdmBKQSVFcRrTNdrs6/4X3vx7a8UktdWpKo2wd8I=;
	h=To:Subject:From:Date:From;
	b=HLHMtnkFt+zbnNxwpfwt1NzZM0/oD+BLBx1tGbOlKUF1TXVEl4MGEMZM+1/geNO8z
	 ibJTBiXfPDrSqPRM2eZM9fPTFHHMxl8GBJBRpV64+KrRhojUeNfcX+lM+DpgPWk7tN
	 8hPwyZNKEyrVKEyL3VP4PdzHXb7vildo5VSAiRtMHMQlWdVMQvVRmtq1BR5Ns71rlT
	 6zUbfXTUQXRRtCNqyyeGfi7HwyOvwRhegPPV97pudyNn7h8QOCpUGrIOwt5N/POXbf
	 FohHkbzyjcISbyIRajI+jTDAT8ds7ZJsBbU2m0syMcHij/Gb4lGqb0FWhhE4PBTXIf
	 DKz+tw66muiHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E69CF9C68
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172689695359.12410.14514840430561851831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 567b780cb96483feb500a42949dd20a4fe084972d93f1360f601171d03ed530d
Date: Sat, 21 Sep 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726896953
