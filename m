Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 987B423C5
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 18:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E10CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 18:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686421326;
	bh=d8Y0c5b0XxNDr/hqLaF4dXZcgxW6okOrzD6LWoj8iss=;
	h=To:Subject:From:Date:From;
	b=H0T9UfMmp0qshiuzytw9fdDnX3FI19K8tIeivwb0fx3ZyAGUuThRFjCi6rL8qPyk/
	 OZMurdW04EMjKvXRbc5c1jgAPHe8LII1Tms/VHOOHjPV41FQ77Z0fYGVVjZ7WQ7oIN
	 7NEJdYgt57rn0Vt9XEZ9ioZg6MEBn4eDYl54imu1Jrv0zDwC7Xw9pjidte9vFW71/e
	 G9Dt94yk2xArgf4ARUwqheq6GV0e5kvaeNggy+rtXU6LVrqYC9jIHxM/Gz3Ia7TO5G
	 YL/I0ithXCSwApGFY1j83D/MiaRf9aHvtctXP0x9PDuUW0lVNDkmNgexeV8jOeDVKE
	 tylTbEeLBxceg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4CC4C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 18:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168642132581.18602.10201410768530669632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ca6c2a234ccd3b5d682c8f503817ec2555a1a670cdda883fc1cdc3f8cf975bd
Date: Sat, 10 Jun 2023 18:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686421325
