Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07AD83806B7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772801694; cv=none; b=UBE9QEQsIwo8R8Y4LXVnURHZMAiaN1ywmTGZNxuhj1EuLHbmtBR5vceGKGCr1yrTr+6aurnO/FjqAeOJ3Ae9yZEEC1Tthp4Q4kyvsPmQqijhOrnPKrJ2mVLvAutNOZKZI+3rmjCvSF3TGVrRXddXtUy7tuG2PIttxGuQYPFOgns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772801694; c=relaxed/simple;
	bh=Zq+qhORqirnAU0L4eYc3njQM8yNu1qDwRcswg+DANiI=;
	h=To:Subject:From:Message-Id:Date; b=Vmxqaito1GMbXRXVQcux/JkQ6HLRFrspfSZAV91Ecw5TLMROFmGwylTZJm+Nt5fISrazs+v9EmZf4xtuN3OIMmEHfH4zAwawzI6OOGAhpPMu8J4bYRy45LFpFqKGiRs6ziEwAXSntBSas3SJnnOz+1Bp1BtKJAznDN1lBK6bCew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fnFSO+8B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fnFSO+8B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CB3C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772801693;
	bh=Zq+qhORqirnAU0L4eYc3njQM8yNu1qDwRcswg+DANiI=;
	h=To:Subject:From:Date:From;
	b=fnFSO+8BDlruq199fBInKnFk+j+HlKYg3ONIMgEwhO44VmABlZpEKfkX+63USKiq7
	 oCx2+wB1DROD758YvZuwMKnCXTbD0WbTx44dsVkiiR6uVWraYt5PNl1KiXls8IOfLr
	 TpqyIU+b34qyD0cNg3mEx8FkgOYd0XrYDXYZBK9XAsuow1pENfvG0ERGwGDZ0HwcNU
	 w4ZW9gLF8ctIPU5MgOv5/T2aX6Gu401aZqoCI7i39Z6Sk6fnW10C4d3U3fOgPc6bok
	 IZ55GqhE9vLcZ9hoJs03PMHQcXTDO5VllkP8XduAPlEBWZVRcjdJ5kFglVvfZAjqA/
	 6Cjioe/aFUm8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DB8F01834
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177280169359.27675.7489560932343711442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3e2b435721bc53fdd333c2200fa0e5ca118a97c2768d040fe230408be9d6666
Date: Fri, 06 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772801693
