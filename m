Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200B074C14
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762270194; cv=none; b=G7Fxcv4OVRuiTBAddDuMEYYy7uFyygqhppcTLfHdjaNr4yD1Cs9o5GH4MrpBR+9RFt3whiMCpPwL82p8N73fX/nfYvT3BCRzV2G4i50rhvxKWq2e/17Xj43pp9RhATQSyzsksluXEfA7e0C4yam5OH7saKeDnDK4/dd8ZYVcBQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762270194; c=relaxed/simple;
	bh=PVv5+/Xb1oH3EKNMJlkGPSGvP/+TzUx7w4XbG/u7Y+Y=;
	h=To:Subject:From:Message-Id:Date; b=MLigbZ7RQLACXkkrzTqnkiDU5Za2Fqo2zr2hY2lSJy27oLxJ0eotYHWXopnxuThGEheSlMAEqxdE6vaJfjuQ2Vi7AxtvlHJahXZuxX8b55moc5EjFtK6ag8jC2VpCJuLsNNRwoX5yp/gW0MpIVLp/b/OH9aa66GIqcVN3AMIW/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9ForIyf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9ForIyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DC0C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762270193;
	bh=PVv5+/Xb1oH3EKNMJlkGPSGvP/+TzUx7w4XbG/u7Y+Y=;
	h=To:Subject:From:Date:From;
	b=C9ForIyfi0I6Y2i6KYVZfXpGm020itixOd4IIJ4NOLRnH1n382rDqLw4Nr/nQMMyf
	 6qt5feFjvL8MA9w4xLGhv0VBGsK0jomuQ0OEWVnALpIUg7nNemt9PhkiSGizvUNMa5
	 l8eizo4FbvU/0Sba4jwTFMKxlMrfyxATk8KE5JAehqOuSLPLv4pSRw4lU7K4muGQXQ
	 D9Gb0Btzthb307LceprrIG08bjPm9+fSX6Ce/eCJFFdK4Z/27Bh5b3HkN0GvMHVU8A
	 76cHYEuZEjsSMx/Dz06B+ydGXpRsoNGA8fSOJ1wZAkDVXxrAZmxGG2ZEUODEI7mUlJ
	 CSOrbOWVM5u/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95694CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176227019360.28340.5975082182203561033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd8d16136c8384f0452ff39164813359687a4782cb0242bb914bfc4be3607aa2
Date: Tue, 04 Nov 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762270193
