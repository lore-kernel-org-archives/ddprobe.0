Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5454019ABD8
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 07:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739606334; cv=none; b=KQAOL7cwZGLAKtJjqyjEWFVYEmuebBOL2NyKWEOXYfy/txYclTyTeMbG1XAHCvSZtEj6QRGOXhO2GU/+vTPDbp2kGra7OAnptgClS4A0w0hwFWbfoXlHmneSXhAWrD+oEU/SmOB6D7U4k/9HR6rRGTaVe/FUx9OPNVGtvgBNHk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739606334; c=relaxed/simple;
	bh=2X3p46oibovg7HbTWaHCJ5A3i+HKq6SpTkJ/4g/ndTE=;
	h=To:Subject:From:Message-Id:Date; b=Mu/9k2X1KiC5onqfGfpTB5UnWpx2erDrN5oJU0fjPL4qajUuIrgEkiI7y5V1MsPCBgT9zvIy/u7Hvj+sraAaNmoG9pfCn0IKDoXOQ+f8Ffs/qipZIQrzv1Tei2JeY+eZqFBD+gwx+9wzlyFTQN6FzygdOTvAOf9Z2N1SpbFMCPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RadhfHl8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RadhfHl8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B079EC4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 07:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739606333;
	bh=2X3p46oibovg7HbTWaHCJ5A3i+HKq6SpTkJ/4g/ndTE=;
	h=To:Subject:From:Date:From;
	b=RadhfHl8qw8B2MnYMIEW4zF97JXvlp4yi5FVgi+cTxNpZ9cgf83gIXmDzKCqbrAId
	 b+uiPvP8Zu+Xn6JwqXJADXDc24zEGrX6/8xXvu/cyFaEqioUiVdA8QU/tom9yzRxaI
	 nfM5NQ52v1AiMgf2OBQNM3KAwPc/0LTUzPXTBA2HttwenkqgcRD44g8F3VYD2dyQCd
	 IrbSyXZeyLb+SU61L/DYjQoeCACZMc89JSupUBHY8RGoZsVKDmIq3GiyiKRvx2B/cp
	 AUXEeGI1LccWWjfIoWd+LehowtVqJMTdMfT6XMiMQgbT8uV8e25vc1ZzaM3y4zSOqY
	 vMbxanpjte3zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CBBC021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 07:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173960633360.5196.17484750767480480270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 225b8b512184987f43c9142cea73c08febddd1af778a462e0e669f01bb04c048
Date: Sat, 15 Feb 2025 07:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739606333
