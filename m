Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A21C846F
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754191795; cv=none; b=A1CnQ08qEIm2us/NrSS+JONfpovJ028YziXjTOARnLyFE/yU1lKhhXyT5+o8bnU8Q3UDr2wLlcntAnT+/po40kpb+PvdL8kkHyVaq4CPSK0p5q+4cXyE+Sx2XMae9UVp84308YuGwwcVaD37I2uTttfa9f5JZnadTmNnK0NnCFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754191795; c=relaxed/simple;
	bh=m/ECl/wJk5lSLsA3oe9VwOYBctfXyf1Yv1XmSqMWn6g=;
	h=To:Subject:From:Message-Id:Date; b=luhhhAb0iSWUj1G+oUkji9IqLBVoe0zXEQnVEwH+wV3eXwy5LdnZt0OrE1FbmTqxd98XdbEy2lC7JCOTh61A+VOaP8u6FBn2A1Mn940Fta3icONhPXKDiV3jfATh7VEqnONKLeacbN0X0tgheDgCeXp8yUsNUE+AwjkZ370nsOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJwACN2q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJwACN2q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC66BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754191793;
	bh=m/ECl/wJk5lSLsA3oe9VwOYBctfXyf1Yv1XmSqMWn6g=;
	h=To:Subject:From:Date:From;
	b=FJwACN2qCGoflA/z/zKkZ1bI6CGcVr0FhL5C+uWvbUt7ND4Wgi5Mt/A0LSKPDOZCt
	 P7Yr6lERb94TiB5qiATOZ8/WnP+oV3xjCg12q34rPzHzFjcOt2voR07h7XH3/2fpsr
	 yagyHms1fxftS//0fEU0KyEzoK+zbMJir7647qRplqi9CV0u91OhSa2yYYkHEh35Bz
	 Ak9DtnVNRBleS6MVFs08+r0syyQPVE3b+CSZDl1pxqrlRK6hvWVyV1tlpdH8J06ecO
	 WwOn1n2xQpkWCGbeShwOs8bonIn3eSN5ADvqASQq3HemXZ/y2aBIbMqp1q1V3Ed5I9
	 qWKAjyQ8js+sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998C6C87FD2
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175419179362.20469.14363933026904685026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d324bbcf65b6fba59d3e6ad5024fad87bc3c8ee691d64e885ff5c9b554da86dc
Date: Sun, 03 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754191793
