Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFB2345CDF
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 18:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763662914; cv=none; b=jqdhi84JfhYCJ1IbxcRXWC32iXbF1aH8JxscOZ4rAnvcjdVaZVCF/0gLRqW8FeyUQFzJZVJuxka4+kAkAv5LLHABAh2jZYyPvkXuXsuadX+IHIMC04/wzcqRjKqP4c/3zvDHLBl06GxizYpwDTKoGrkxckqR5tL3SL652TVmLUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763662914; c=relaxed/simple;
	bh=Y0ROWmALVAMVCQ3IcEKbk8umyuIy4F5Mo73GoqcotbM=;
	h=To:Subject:From:Message-Id:Date; b=EVGjZMmdaHbFhP5W+y7IOCGYkrno0Hs+aWOvnL/kl1/mfBv7swWi4Pf+SMfLYCPeOQNJpKeQklPMWWMh1g7xtuyar4zYZd5F+kzwUDhj4oSuIVLf06+7afvw0qfkJab9bS0Lq9eZc9PhUzuinQozF8jTCHAv3GNjkIk2DN6000k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQAnqtf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQAnqtf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97E5C116C6
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 18:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763662913;
	bh=Y0ROWmALVAMVCQ3IcEKbk8umyuIy4F5Mo73GoqcotbM=;
	h=To:Subject:From:Date:From;
	b=EQAnqtf7Zey7wGrshbnLv0sBFM/DXyGfRXfP2tbwl4soeaRRBYNHQPKLCQzsJbk7d
	 cl7dKekJ6SuAO8orSuehAhU4zGoUTwXbF/cppLPhBknhtpg/IDRByWS0lhIua+Twks
	 Qs3LVG0ErqXuT6t7S06nZZSgkvQEDBpInKZOrcKU/YmgXb5LLEFQI/VXVmvy3JsMBX
	 fB4lF8gjFShXHCMdKOyax8wyqwrpX/gDEZHK6Akrqwi1YZIQDvFEiNRc9k7XJir726
	 i0HqWrpNbW88aQFvVAVdZWNJnjFeKEspVW+IwgrFoSvNYif49DGW8+UuFvmtFTpVTc
	 U7YRdsevUbluw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B6DCF9C7D
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 18:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176366291359.3246.18058927187054041578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b910ae95f09c247c3f315e7375cd2667958465d95d67028060279766156a398
Date: Thu, 20 Nov 2025 18:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763662913
