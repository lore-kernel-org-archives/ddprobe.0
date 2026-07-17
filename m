Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3383368B6
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 19:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784316514; cv=none; b=n9mjJfAgSyDwy3l+6T11qjmoGdfSjoBfDJ6qXDL4VBO3xKpD/gng6AUNIi4e3OQC9dic9ZThQAN7VJnlkGCqhP3h+PtWF1LHOS0xvGJ+rugom3mKOsWyjPA/FgAdxLRTWnm4Z2S2aLA0KM/zpk2b5MAQQh1TsTT1xODOymMibVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784316514; c=relaxed/simple;
	bh=5F1aThF2iiXvFux9Nm8fF6yY4H4XF/h0t16KL/6jRSg=;
	h=To:Subject:From:Message-Id:Date; b=blKRf/+/evDXKIpTGEtPAkywpT0n6J/2pgtCJSSKOX44znYXpbic7bLqVyC9wkUHxOZzUSRUdzbr6MBuO9tVc/rfLGIU4sBqn3yjtRrxVsT6loRSeXZfFIlD64VjYqiBrTLh1uemZEwWNFWBfaPseqLcd/hdtjUZlkJSTq1zYZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drzQbRp7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drzQbRp7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED34C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784316513;
	bh=5F1aThF2iiXvFux9Nm8fF6yY4H4XF/h0t16KL/6jRSg=;
	h=To:Subject:From:Date:From;
	b=drzQbRp7gMD9RGK4dwWiDEh+2bs9tMxTd/0hEaQKhyYEr9VXDUGb+zXU7XuyFBXiO
	 hCSyUKvBl0ngbmLrmCn0HcrXamkPBqgbS67qIb1NKOKDeXOQg8tgrpKqr3fiTkJi/j
	 TdzWtiKHX4kBm3o5XCx7GOpgqYkxQvfp18Ds6SNpLmKwbWh7l86Q/QvCMrdRslE3JU
	 bnKkhlviqPyNIrx704Mf9bv7Bh2jjcdYBVNz8bsHqzE8cUsFM9KAC86x++ho56hzSw
	 cBr8Ae9QjWL3A7UtuNC+y9c3pus+HxDXhUPATHIDl+NQl21Qf0hY9RPNMU0D1OaYic
	 /qzQa8Ii8QIsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8C2C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178431651368.11843.8816924760205619454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337eb2969e3b68a2bb765afbb81434740ab715263670b61e07c9e36e07627946
Date: Fri, 17 Jul 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784316513
