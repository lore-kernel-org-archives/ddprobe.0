Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB18734C983
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762300793; cv=none; b=kQiKl1tPLkmCt55Ks4qvi1Ws2638GrPOmB6OrqQedmuFJ+YCHHamtrFy5V1OWAO85AT6Oh+JtsBVc29eMEpdAV6FgrUmzoW2TXnCZSo2FbLinoAr12l5HMqms5k4UZ1N9umO6g1yl5nqqt5vr7PjK0E6+iDj6pknVYN9TUxjHZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762300793; c=relaxed/simple;
	bh=W8QymCCbfsLHw7iOWV+RijaGrSsQ6HlT6JJC+u4Spkg=;
	h=To:Subject:From:Message-Id:Date; b=PImJDZEXp6acxMHeS7aA5ZDlU7SG+yA6WoaweAlaCTcNEYKSZR3emYUFT1k38nI90asjoQ9ODil/TQM/dWnxG2Njpu1ooXoUviPD0r9KxpaoFipTWRlWK4H3HXcgfPHxSuq5HmFdblx1gzpL09S+wEzWt93q3sSIj3iawN4nR/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMIp/l7I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMIp/l7I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCB7C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762300793;
	bh=W8QymCCbfsLHw7iOWV+RijaGrSsQ6HlT6JJC+u4Spkg=;
	h=To:Subject:From:Date:From;
	b=XMIp/l7I6AZdKgjTO0jv4waprO305gM4wxk9hLpTTj5PzzUb5SCkLy8lCMLBI86Hh
	 Gu0l84xa6rREcEgQeIQR0sBUG84z+dcRKmXu+YfwVwmFsUtvHNJCkxS8+1vGHhk7IM
	 6VeJ0GOlIBdYlCFA0/hxnRBvnLg11MrwTa37cY12GE3zHS0W/k6F5jqjz2B2SHdv4C
	 VVuO27gZsdfp9X3xPR44Xgm8CU7JrNzfAY3BL5rD0FNXZsbB/OsDW3J0r/3815Xr9r
	 +te/Ji8JguuoKLDn4TLipChfayUd4Fu+dYEf7ia1DQJrgvra5T1AbdhP7GQl6j8iER
	 8Rj4JFaAxMI3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908E1CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176230079358.6343.13208473207766303437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0303b1d899883278e0ca4ca6d915e7571896ffa559c5b57b96de5f5bb31486fc
Date: Tue, 04 Nov 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762300793
