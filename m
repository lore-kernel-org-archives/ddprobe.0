Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBB513D51C
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771787694; cv=none; b=jDK5v33uw99j/f7qRFog+Uf8srbOTcu0POZ2wSnZLo6RLAIMYuwMFPq6Jrwz40oYxPE89vJI8+L2Nv9wB2beZnUz7AKzhDutwdeBSwaqsiPd/pmbRzFZ4NO05Rk+ydcXBUlUt3TzqJpqwpfkDGxx6OgdmudWZH8JAkYu/P0g8l8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771787694; c=relaxed/simple;
	bh=eZsy/UElVGUNHH2/Zm87YiRRS5byU9+uBc7RdLwJgDQ=;
	h=To:Subject:From:Message-Id:Date; b=Pe9Gvy8Nfc9jgieV3DVWYoO88vgj6W1pjlrj7X1toW+ycqBHxZNe6F1pL05q63DkyJrs3AcGMIWHPi9EG9BmvR7lG3b8fDNTiKRlH5K2wjJmOcH1L6Q6XyHrDFXM8mccvtu0SIze6FyulhZde9yH3etGYVMeyz9q0NmyfFSZfqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+HJvRzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+HJvRzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7892C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771787693;
	bh=eZsy/UElVGUNHH2/Zm87YiRRS5byU9+uBc7RdLwJgDQ=;
	h=To:Subject:From:Date:From;
	b=t+HJvRzAE63MU8EAatQkgtddSXI/vWiFJF7IpO0fO+5+8Iq26hXgWlDRVqOpdUgqA
	 0vd+WBSescB6wYS6WgcGDqEEVZr6U53K+WEbrsHSmehOxVDVuZ7GRyUU0fqDug5ajj
	 TgvZzeOcEiKila3CZgL1b5wIEn86ZFuidqwqASRqQp7k1VOszgSnUe0SEV3bU0LXr7
	 F4s4Fde6E4CZJuMQwvxeNY2JLllvMAC+oDhPcvOugriK2USCEupRD5fzkyx8SoG5oy
	 QRR2rZP5miSDwB+2lQVFEu00GRqjShPbnA9O0KQ4FqsCHIZVyPnsWn95+D9rwXMYpa
	 h2znDPoDj+Yyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934AFC636B3
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177178769357.13103.1878619932870309254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbf0521fd68b7df2d389ebec6d9bcfcaa61530401d762e18522b1f1608253191
Date: Sun, 22 Feb 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771787693
