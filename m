Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04FF25BEE4
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750753794; cv=none; b=L4UImgm8YIAWmLKpmDXokRhykBMcay4oEkjSkH6Y8UGdMIpmoj5mwhsQ5R3bbaKZT0Xj9g6u+noo7tFw/gTTOMtV9D01OEq8GkCc76D1qbrHh3J4RasrGYQGu2JfKcw6QuTMuU2BtqXL/8scxa8sEDghYY6koHQQ7Oj/yY3u/J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750753794; c=relaxed/simple;
	bh=+erzAzWGVRVzniZ9gJwdQO2oHOzUH3lVrbuviioxmFI=;
	h=To:Subject:From:Message-Id:Date; b=WZqCiDegOgcUR7EyASHwYblIZbO4opOEx/VoigvxXlPjwUttpoZRIwLokWijZOpYRFD6eQ10v0c98Y3Czw2ki5Fkc7WZ42EJT59Cy1/NAy234QdG0dgkrC2CiaFyLIw7RrPYSC2pAhr/cIh0sX/qE8HDJnRYcs1e4GmKYQTz4Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6GuB4IB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6GuB4IB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0472C4CEF2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750753793;
	bh=+erzAzWGVRVzniZ9gJwdQO2oHOzUH3lVrbuviioxmFI=;
	h=To:Subject:From:Date:From;
	b=l6GuB4IBXA+xAg8sz09/8Odg94D/+3/dDYdiULRkT01/lV7VZLHKG+O78DfgsZhV2
	 XsPFy/RAxIRYVpvKNtUN2YTBNBUD1PD6OPZgogOCpf2D/ts2DBQYXYa/w5guhbWNuc
	 koAe9rXJbo8VNY0YKOeuHjvdEINtdkwsYYYsmQ+I4xvRCMNu5+hfPZNz9DIbeN7eTW
	 wrq3bmZz8CvqkpYRV+YW8FXDl1bzrrwgq6bHelpqnn/uCLQ6nrju+XjiRY6l8eDxPN
	 pPaGDoiedn4lzV8nDGkzfE6q1USaX9DMqpiM4aG2kXRXehlkqn2LlNuib7DpSPQKh4
	 rj3lkF/7Xw8yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901D4C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175075379358.24562.16417884380783825561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb9c709e97010927b36d9e0a89bc8d5ac91da9d5b98c0b8edc3e8406068046c
Date: Tue, 24 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750753793
