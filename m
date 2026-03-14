Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D51246BCD
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773483894; cv=none; b=a+V/1+SBpjpSQk74q71L57gwK2TQ3yByjpY8cE4UHWSfu/NJwbZVEIPtlag6zu4ay9r2X0P6JFxY1SDok5/huUgGhCeb4a0xWjK0MyZcEW0KmYMMiPyDdn0/b5TdPFdoL3UkwACIxnrvICQQfUQSwifOFq+DEx1i12Cc+g61aMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773483894; c=relaxed/simple;
	bh=I2K6ZfpVVVRgDn2g1jqRhhMb9gdKH/giJx+pLynirls=;
	h=To:Subject:From:Message-Id:Date; b=JkpjT2SytPu0iTSy3b+R/pblKkZqJs49DuFk/o3akz7047MaMzzJxF9dRaRXEct5TfL+1b6GxbgtqnLEwB5Rt2AX9ON5aUBMoyfxp60iX2yJWd0+JzM8TI/AZ+YK6JXPejiaCbPQkgJD3/15uWsXXbx3ND8NZg4NtbubfMB24Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRXLthM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRXLthM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F401C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773483893;
	bh=I2K6ZfpVVVRgDn2g1jqRhhMb9gdKH/giJx+pLynirls=;
	h=To:Subject:From:Date:From;
	b=QRXLthM7mF7frAvMQPxvMpvI+Y75pvalHYy5Gt0UvqIqttZ8WmgwuGsYe4KNxR54K
	 vWqQxxl77IBHcVJEhIIktA6PUxu98IlHB6Ek5OOj7XaigJ6W2sLjdnAkQrbAYbpsX8
	 Ogd55jIOdS0RCfgFqJCk9JS3Vp+dU0mw0s1uXWVJjKc6ZRg3ePnVWKAHkLnnEyxu8W
	 IVePMTpxIwIqC7BAqBJMN+KJx4y6z/hx1hgwr/rMrt8Pbi4LPJMsU8KJsqqrbxTS4M
	 ZIra9jfaWZhj8NzbnoTgyZvmzgB8cCUVRW1RngQ/yiyPPiXTlkrcwNXEWkb2XIEOzK
	 S2yREHoK5oTOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB6010706C4
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177348389358.10658.5996843211610414684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc1334113dbd264471474c31a6378edc290516126baf154d70e2c94cd44eac57
Date: Sat, 14 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773483893
