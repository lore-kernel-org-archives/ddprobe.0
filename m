Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA4722259B
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761938394; cv=none; b=hoyfef0+ihPR5NcSIbh3qCuCjpYagrpoLE/LFZ701U/mEQLMmQ+SYmMYyi45/wjqEvF0B2DyoDvLhl4ZpPpK3bddD/8pb/PyHmG59aoMm9J5C6EbfvoWf/bTaCvS0waP5CX21HmWlUcwckqr9qkacvl6KEx3SX5Q7udgIVJVA4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761938394; c=relaxed/simple;
	bh=vpiHUF2V8Ru8LY7Vu9QbBQSGJGxZw8A2nVxWGaFofX4=;
	h=To:Subject:From:Message-Id:Date; b=hOXstBZ0nXRa8oNEgtCxgaeXtQxOOIJBU03qpa7DRQ51HbMMdgMx+HhjWJKbLQzSnZc5nD2BE+XAqD3woZkdCDWVORlhTVc2cfozcIIQFJaUbT8/omiokFy3VegMlAbhef7R82zhIw+uxYVd81IglFDlQALbX1YgiA5OPl5PJwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6VpGr2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6VpGr2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4192C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761938393;
	bh=vpiHUF2V8Ru8LY7Vu9QbBQSGJGxZw8A2nVxWGaFofX4=;
	h=To:Subject:From:Date:From;
	b=c6VpGr2+d65CjakbWrHCWdl+WYn+nMlE/2wFxfo2lSzmAyy2pXglMUj16rt4OjhLW
	 UCi5K5LuimE5U/8nOJMHWiO80U4gDjXpOMbKHuwTu3pcgqUlFQMjpdOzpvk1/gEuH2
	 ClZ0vDDX2mG9i2zI5/riNbWdKove5L5qq4v4wee/RtAoRht2DAI/5ccTaixIDsZ5Om
	 RKFo1vgloBSz2EH+H+mlgNcWh7eatpD8FoxZ6ohO2ZwCAnunDFodEBXduhG0dk7fwJ
	 F5EM+t/VJZIz9bHaeYyNKxamnJCp4LEP0mkvtngvxbR/C1TXoYOhYeeI20RZ1NmAPX
	 HP3vydFUSKpdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E56FCCFA02
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176193839363.24047.13353819862331656537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1804233bc40e49480c11d93501d8cc2f3fda5680dd1a1a6f393c13b06d75fa9a
Date: Fri, 31 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761938393
