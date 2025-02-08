Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E35A8F64
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738979754; cv=none; b=MTyf6ilhRjqiC9bluLuvrWHzRbCcWg9erG4ILLOLvi7leLCeGHglUKzP5/BYvRTKG9eEDNv0jCaM3TpC5420h6aKIE5oj+Qf8ItlgJLTUgB0oWc71fDvvAoHl9cMjc/rTjc03U/09nTqMiqviKZIVfhP/bL2QkAYAUs6VakuAyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738979754; c=relaxed/simple;
	bh=0iDl5BZrPhHcBmqrH8X3xPYmoXGgSN5uetJVti+I06Q=;
	h=To:Subject:From:Message-Id:Date; b=X+llxfxlRhHVLN+aIVOQ182Oqz83tCN2ZZ7eJ/hzwkDmZTgsiwSe2bH+KTVnFWNb2b1vmuGEq8SAqZIS9nclOhVRatgcmsfpYDzQo10kWo/5LSusWThTzogPKsD38H9IEfXmjVq5WNpx/2RSB063ZkmdVCSeKSpk0DXy+E8e31k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgqXL0eu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgqXL0eu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3792C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738979753;
	bh=0iDl5BZrPhHcBmqrH8X3xPYmoXGgSN5uetJVti+I06Q=;
	h=To:Subject:From:Date:From;
	b=JgqXL0euPZKwF0DhPKS2Cu/70oYbxm5far65NzHPLux4wrE0dGITwjjLREUBP2LNx
	 6CX/VeJrnSCN4nPBmwUlWIRwsDN2y1O0+VjuBU3eDdqikt483Lr5hBZDHtmxlNQGx8
	 YoDP8heuJ1jdnXWU+5mf6mUY4doioBJuy6VmPOoRq5NVBySHeEvxh6TX3n4+3nW1Ql
	 bbuQEv9YY5y+byEprHfyayC7maPXZMpDF/I+8235PnH1pvtEGMufvB9ztRHTZwOT3g
	 uUOfZvKEiHI/qG73CYumvQTjaHz/nADgjYxiKJaoClSRTutZHiiBz8zFZprMXe3pQF
	 FqFDsB/XnExlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956AAC02199
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173897975358.26816.11479798997506011718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9853b5e91739b2bce06369908745366a18121b39f0b5e85be53596798605c115
Date: Sat, 08 Feb 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738979753
