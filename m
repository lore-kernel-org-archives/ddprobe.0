Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB587EE
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 06:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1B323C433D2
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 06:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683008706;
	bh=2PM7vxjeX3w/PNMpetQ9gnlzkMLYI1WughSRWWCVk+8=;
	h=To:Subject:From:Date:From;
	b=QqA51RacHam0dnqmJ6VMIoVxWTWEUwJ44EInEqYWBJPSNP2w4xEnKYguypt7k9BMd
	 D4bQ+kAAjX+9WJ9V5Wg+uE8v66+oHP8DCIAZuUWbPth+PHJxWDjNx/lvTrBwUCP93q
	 WSrW/nJWWkC723WIQU5Ib3gDtAJz5IozNeY5DrjHS2fcRjfQm3l60+Scb2mGVIJu7t
	 NOvNTVmxhBrU7rFv6YalE2sGx+EJnTigoc/UFFzXhFO2zH+PTdUzmkfphMtTXTGMK5
	 mt/SXcqmsfn5G7isg9KJpLNHUnk3/6JlenmrojZwFpvA84fmLWKxec5GCeGuv9iz5x
	 gX0lHwBe9CbqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA96EC77B73
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 06:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168300870591.30437.12450612140913735390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ee03ad231ff456bab8941f2c3a8678ff1d8737606dc893f0392f0ccd9db9f8f
Date: Tue, 02 May 2023 06:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683008705
