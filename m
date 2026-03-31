Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0131C40DFC6
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774964094; cv=none; b=UWBZY8hWcSWOV8qbce16CDqOIajh/uxDnN7I0Gat2hUstONobGiklJmYjc+ddvphmSMeaDMsRATc4eh781DOuOFhwgf8r1qoLyvwraVZGBb4xGMytVZ9wYJLEAvicjZKdonTlq0T5KRxk+u7A6zv42XzhZpWp2nWkU7RkpJgRp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774964094; c=relaxed/simple;
	bh=5zJr01fLwQxcVU8v2Gzz2lt/g1owjblv/v85ttSHzGQ=;
	h=To:Subject:From:Message-Id:Date; b=h24i2salgobiJIFmGFw2Jvc6QoCTuOk2ZoC8tgIlgpWYAGAPxecIHk4ughVVNRxWlnK0yb+2Tgncblc0l52vgmv2x0a0a7E9oCRnF1zoGGsWA8OnmWlGQ0DHoXQ6ZyEo6ibXDz+kaXx8aDG1/B8UkaYInD2LNPCWumEpvNj57VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1lM9LXh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1lM9LXh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A428FC2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774964093;
	bh=5zJr01fLwQxcVU8v2Gzz2lt/g1owjblv/v85ttSHzGQ=;
	h=To:Subject:From:Date:From;
	b=g1lM9LXhcx4E/WZNiNL38j1amJOjJYgwmBdC5eFZpwcf4kEeGO2/WycEjy9BrgWbM
	 U+BN8LXB1zDgX70gR6k+rtFaQsTyuhktSWKYoHxb5zA3RpQSoS2+rOJuewHg9fX6t9
	 6lhLnPpO5UnYTbgCAZdekPgjw135ErGllN384Y85Wy2W3w4DbZ6fHxVTpSMeFJXXJ6
	 LcnywkrG2kctTaiqlI1Wsw8s3ouDTocIS/DFtB5cZdNtpZesVNTTDdM5syS1pFVy9C
	 GH0UlWA99TUksGdZ159i2mAiOW5kbz6IL7tiuTDR1ABzMT2B3cJjdGviicY2XnbFeP
	 3sq7+QaHzJDjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B48109B467
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177496409358.25273.11250492224103684240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1243af62975b8504e4a97309925108ccb6792315b0a9e19020709be056d264f
Date: Tue, 31 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774964093
