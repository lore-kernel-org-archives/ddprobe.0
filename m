Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1AE396
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgb9PGIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CF5C433C8
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698462496;
	bh=Dh59XBda1h48ZQim/2MZDa0sWktgipxXbmmZ4LUsBPc=;
	h=To:Subject:From:Date:From;
	b=mgb9PGIN/6TW9Pjwby7Q++woqBzHxlihUXWxMlxgJ8VUqpHrSLZbRx6OlpnJyi21K
	 JT7tr9J/d3lK1iec41lQDQO6pb3YXM7qviIGX46+YQzJIyH4SJ0dDXSyfC+n9cZgHn
	 sWptXcFunnfXDyfsBgSKU212q35IM+CAy5W7pt+/xPow28SvAvvlNLTQX0kG84jbpf
	 y1/+aAb5Nd+1yxIEwzTruG76rFNcHqeDiJz69pJAAGArlSyOl7M6WyV1vSPQqnOVgx
	 wVdSSl9nYHomVp0G42Z4BA3ClqkuFYaW+K+JJu5MIi/mIF40FKfejb+KSZ6CfCfZ4y
	 p7+w/qUV7NvGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81366C25B67
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169846249650.20818.13390148673036397901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c320708b2c6142ede3728b8d4225d4cbef6532ed37a31deec7588ffc4427626d
Date: Sat, 28 Oct 2023 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698462496
