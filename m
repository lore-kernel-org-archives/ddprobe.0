Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537E928F8
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 13:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645018884;
	h=To:Subject:From:Message-Id:Date;
	bh=787LUbNY9wEqrbf/4M7hO5OwYDkTTtpOdSDtPiZs8Kw=;
	b=B3/4sv53VeP0sBAEmu4xNxHg4WtA3MiShS3jrQKI3F5S4SwQgEev/vni6BBNJs8L
	8mcv8sckxLxJvdadCq2vitYtl3qb+lxAMe8N2r6v42Ohexoe3Rb9r6n/CAGg6Ru7yX/
	QafEjcKzWuBPFjwWiScGYojsqAZwpcO+vPq6HJiY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645018884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=787LUbNY9wEqrbf/4M7hO5OwYDkTTtpOdSDtPiZs8Kw=;
	b=jqP5aFngUoC9RMsUKoJaBJxKKiqfMBEMu62jqqrEqcSOmvUyQ86KBTH71sBW+D5Z
	++I03vvDGnp8NDM2Jg4v4sddY/Zqq4dL16K40n5OArol2w8qHdfPNgzqGHSsXwjlnOG
	CQjRCpR9vHmjlSqYKm8tLt1lSeyuuv9yUJWzTPo0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f02c42a81-ce7f3210-c48f-4d9b-8f61-28dfde9f26a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 437a66a79ddd6e371c4e4906cb6031db13ea7cc8757be76c1c2a39d96739a04e
Date: Wed, 16 Feb 2022 13:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645018884
