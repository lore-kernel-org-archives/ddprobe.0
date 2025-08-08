Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8451519A6
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754621394; cv=none; b=VlyFm5TAAuWCQJYvUMpnYwZSpgim5cCOmALQ0Allm4NoKYtAog/ikeJZ4SLB5MynqM6kWT5bHbI2rrs0zhWT4U5Yjbg+qpz3cVfdDGX7yZi/3vnEB8F6OInb2rXrEDGC3St1Oqs+T1XkHvWMC41o/vQhMSM4tCcuuZ2OLmJUsm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754621394; c=relaxed/simple;
	bh=6X+p3+DagIXcZazNIjxVOE4vSOFgTDDX1l5uM1Mo3XE=;
	h=To:Subject:From:Message-Id:Date; b=ZjQDb0wLwcFYfzXsUJVoK0MkeGy0Pgg0lSOq24s9lct7XJ81EtRZP9QY8BwiDfz0V6QlqLueo1Y1GmwtYpSh7eFgY595r6fta4ewimeOpjjgj7ZPpNEKd4dMTTzKWdcWoL48Y+JZspPydoPP40fU9sl1zwAOarvQD7eO0h7WYaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQBjqBOt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQBjqBOt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE12C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754621393;
	bh=6X+p3+DagIXcZazNIjxVOE4vSOFgTDDX1l5uM1Mo3XE=;
	h=To:Subject:From:Date:From;
	b=eQBjqBOtH5OjJuc7VNbxG7TFfFLrnBf8XbAS9Ky0cUGVxfHbX11w2al2jxR/Grupj
	 E9M1q2bHzEuVMvUnEgeZ9y5uE6b0PznVrAN4TjZ8Mp9RjlCAifRoJzpFtV91v2tGQY
	 AXgN8a0qg0W2OIcSOK+2wHnyJ1DUZohHCZQUs/TkUS1rIhQGuW7KIQSckm+A/j02Pw
	 mm/EGKcksHDd1XSxXdWF1D6fRJfFzsL8koNAxg1WPZEaiPYt3Ch8GCP/Gu8d9oCwpf
	 I9Ixx4CrpA6GiQS55aiagX8EOObF/Vj60sbk/HRhNfXfKOLK899RazG5J2hdERmmU9
	 M5z+juiiYX2mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D4C87FCF
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175462139357.29782.6700126939217121727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37a815581db66cdc93499e78642d486d38e8defb175f6a2e97619e432b92f07f
Date: Fri, 08 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754621393
