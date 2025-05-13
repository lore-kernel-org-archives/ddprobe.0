Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C03D28DB72
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747141794; cv=none; b=mKYXhoQ2qXvkfBp95uV/WjJ2spFj+5ZOuz9DCeBsJWJpV9sIhSIs3hnTvWWb+pIRrvr/RvFhpcHXEEBWey4So8PPunHMG3a/AJtFOo/C6h2Ecm5oeKvCrurm6D+zdykzvpY8V55MEXoYjyCCuE68XoRzwmiywiTbEQGICq1kfjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747141794; c=relaxed/simple;
	bh=hREbFDrlOpxwQu2q9TbLo4sLsO7MrAmd3QaBmK5PW7s=;
	h=To:Subject:From:Message-Id:Date; b=ZiI81i+lM3ladnMf/5T65TP5IXJq8ESHBnIUnlORQmtTU2Ng5J6xVVBxxn4arJ3gLCVmVfRBYpud3j/kdW0hV+uL94lRg6vEkO2waSx7dXAEEtBUc1tGKCHVUyQni42xeRZ0ByJpWry1P/KTkDY+z6tpoKtrHI4JPYx0QnMfhMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHY02D3i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHY02D3i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2918C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747141793;
	bh=hREbFDrlOpxwQu2q9TbLo4sLsO7MrAmd3QaBmK5PW7s=;
	h=To:Subject:From:Date:From;
	b=uHY02D3i27drUdkSTb4fA7Q3WdzRNT09CmRMQ9rF5sRDnCoyqLCUVzCdjVvKaV8iG
	 pupH1gMXr/6PvLS2zoi0b0JZoBhDF5rFYzIE3KHBkgk3DIrdl3bgyUBHJAgLYismhD
	 igwWUAzK2iP0qbQhAboS7YiBbUsP/fSndbPfJNQu8SSgPVtcJUUU/R5KCYDMOGSDSu
	 40RAdSj4rac76jR4h6DojaQ7HfNUkg6N/6CUGc0NBpzN55iwA9wGKp5/Hg07pQ+SpO
	 2MKe2PnnjekxL5kXxFySgNqjgQBS0HZApFny9KEA33ROINzSnAKWzrSKH6fFfxGRgG
	 ODS9n3qA4u2iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F50BC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174714179357.24630.8471073177136045169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55b968c5dcccd6f2a39191956b6cedd7a4443daf77be1710a15cad29bc58e806
Date: Tue, 13 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747141793
