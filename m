Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7C21F9A90
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738818354; cv=none; b=H6rnqqzTvCVGy0QQ5M3+V57gzDvhlMnfgJBUX6znQlwsarIKAyx3DbUGVPF5SuzcSKgS/OYoSnfWQV7IEZTXaCnC6wHR0BJd4+wQ53DpwF3okrkEHrlf3MINGtkPgiY3XKgUMbnUdlahWbMO7z5GaIjyEY4zfogEizfZ3YuXDG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738818354; c=relaxed/simple;
	bh=adnPf+sJWMhP+6YRX4Bn036Ql6Z1R/K4I5OcGxUBvkQ=;
	h=To:Subject:From:Message-Id:Date; b=LVT9O0OBrr8vx1IWUoL3BRZLFpjyxKReiJM0cHRPZUrottd02bueoZpYNNpbvk+4TyLtbyGu/Hfbpy1CBsSUhFJ7UyxlFXsPRI+bz6Pbucz/VvNgUwAHJYP4WMmANWi8rOQCzyCjiNmh0thip5wcxbHjMbellFkfYel34WHaWe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZSxQSB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZSxQSB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7280C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738818353;
	bh=adnPf+sJWMhP+6YRX4Bn036Ql6Z1R/K4I5OcGxUBvkQ=;
	h=To:Subject:From:Date:From;
	b=sZSxQSB8peP1x09M/2XO+lGHKqs90X/d9iusM+KdVOrIUxn012wgALEFzOf1+3NsR
	 QbI/jiTkhq5jvOyBhaM7KOgmbZ1Yz3NH8ViYH21AEx5P7rObB9uqx3RZ4YOH6vcrR/
	 pm3lt7KPz7Ac0DqkReBezIrNnSBNQWi9eL08YfESNPNOW+qnKqN1hO2DBf+UdzWjaX
	 WKgohrC7PCcK7sMBEC6Pjq4Cvqlz4U3aVUj+/DkljOe+QN6qqe4KtIyyEILE0QoxPk
	 Idj9jO2w1hyxuxn902CPntexJpuqLUgvnGkYt86TVlovEXYKwVQYZ1j2o4miQKJ0Wr
	 rdN3l2mwPr1xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F271C02196
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173881835363.3890.7442202312918838577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2bc37afd9a06f2daf694c627e6d764b7fb6f3355b1ce7b56f103866cf953932
Date: Thu, 06 Feb 2025 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738818353
