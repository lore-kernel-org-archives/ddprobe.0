Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0B6624
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 04:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717560983; cv=none; b=gmTinNBRieuVrKoYWWiS7cz6eET/MIltbWScIEInTtbXzmHe1zoL+Q+clXPZvxlxyF+ltgxySmG7tc9rarxht/+kOEYqWCUB2Kz6Q7BieegJc1FUTuLSOzyE5u2emDYC3uAj/Grz/Xw+vW6T57jk7YQ8PFQDan+mP1B7koYysbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717560983; c=relaxed/simple;
	bh=P7RdEX6VIz3zHIUKXANNYA3p0zchu0h0OvoOCOaKLQw=;
	h=To:Subject:From:Message-Id:Date; b=puY0pM1rscgYZhvrPuGXMjx6a/dXaE7Fzkp8Rs2Rtlwv/Gv7qQe0A8Ts7iF+lLGt0LHPHzKdTFFrQueMox+fga8sz5xZh4uNGmEugiDOugS1LDlkvG9ci0d2Zk+1C9Xfpx9jLyCWlJtLbfNwcckC3wnHO84WuToT/9jalWFSyWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brGG1dO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brGG1dO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7C82C32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 04:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717560982;
	bh=P7RdEX6VIz3zHIUKXANNYA3p0zchu0h0OvoOCOaKLQw=;
	h=To:Subject:From:Date:From;
	b=brGG1dO2KRd6qVqr+HddD5c4Jo0Z5QlZl+xyrm4g6vcG7JjLOZ5eYWUXeHiwMOLvg
	 jLnHLNo6OjzA8aRsfetAneRJPZxv9ps++2vjlTyd0TNH56p9sc5kFGfUYE9s5xJ2p7
	 KfXaOde/OcYeByS8/LjtxAKFI9fJWLbmuKt6BfsC6Es4M3JfJaLEd0ssjYlKrOpy0E
	 qMD6PUK0ILon42/Aecyew3qq6evYJu1reK9hSkQLZRUy1VLrk6VAKiaeRUsR4/JmyE
	 KLRz0bda0O0+4dDYQLnJltZIT0qJ/HGI/TVmk/EA14wMZl4Tx6ACe35vd8+8zKEFO1
	 MrK/T8SSEGkDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C749FC27C53
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 04:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171756098280.14038.12442244686003608141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70eaa202341571ee794ca9e06a0390bdc8246965a757c29bc5d24d064af13aaf
Date: Wed, 05 Jun 2024 04:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717560982
