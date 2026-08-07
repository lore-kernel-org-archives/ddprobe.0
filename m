Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0E94B0499
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786134034; cv=none; b=XH7sX/B1Fjizep0i3WlqXxYLJArfUW4/Uz0NIU0cBczpjQmGzgjH7D9xUAM76UogLeUk0DJlPhWmTaDCzLMgCmxi6Npv/N3f73RTtVuLa0kCSut0i38zg8kCU9Oz+3md4uOnlKAonHBkYaS7d8Fs6zacvxUHg11sg+wwQL3w3EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786134034; c=relaxed/simple;
	bh=GzIEwePYNLdnMeVa49KTT8FB28lLlxSX567XM2wMi/w=;
	h=To:Subject:From:Message-Id:Date; b=IpeCG655QT14Q8EaroFDhERWuIpAR/CjE6Bdbgcbj3cMJiwik9U8iA1E/lJTnQsc6BHtuts2tgGPnNhrQcNrFINzaq6rkRNSjVW0tzYWOEegVWQLyEGa2NGYLo/eXtLvRAK9VitckxpFtzlR9n6cZoic+AmDVt/kV48Yijgq0lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTFjic4B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTFjic4B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAFEC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786134033;
	bh=GzIEwePYNLdnMeVa49KTT8FB28lLlxSX567XM2wMi/w=;
	h=To:Subject:From:Date:From;
	b=dTFjic4BSjh27/XhKXqH40e/aH7wDN32ee1J+v8j4V/WJUhHtC9aELLliI5xPZVZd
	 3STHpY2IK0KI3nIcl6YrsuVsPTmqnezDpVz39liHH27qQRWCWKgaHjKAWWHkYQUtUZ
	 fqq7zZEIN1InZFXxD+cRCMlW68QuVXOC8omuvlLQ2/Zf+WMez5Tbu3qucKPFMkqq2u
	 wa77sxlDsHibuuF9RJXhQ3Sf+wAXCnAILeM+KIuANS5HLHt3a5XfyjLEQUjw0Q7zrn
	 kigsujQieAb3/oA7EFjPkhYTA1/eBcoz/0nEKcbp63VW085p7VHfYmpaw3xD3E3RLe
	 v0shwEeqFIQQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1070C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178613403370.8941.13633612131685278010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4580accab597b23c976e99f74ecfbc875b1666b98198eb7bf48804620b2c6cae
Date: Fri, 07 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786134033
