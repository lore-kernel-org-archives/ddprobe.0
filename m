Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A091B86C7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 10:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775213734; cv=none; b=Gta0QDz1clIi8Bqtk9MFlvDze5/z/CUHMeoAgT5alPyfSRoeVAG4UJxxUWSlSVdMdLsizd5sT+odNT6vVQATMnOXms2o1hTCCd1DkXq2xNBin8I9upWHLxbdTVGl2+Z8W8dC39+mr/g23qaN3/5r8DNEIuQPFI5FqFoki5F9Ysg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775213734; c=relaxed/simple;
	bh=m8/82Zz8ep6qVTYJ0Bgm9AgwdFzKxZbEIkKxaNc5wDk=;
	h=To:Subject:From:Message-Id:Date; b=RVvDIhvXzvCzDj/9OMrgqnBN38VXsdjMt4waVOMliIEpPH1t2Pzk/sDdnW3j42o3J3kS5C6zn5pTK4wEXoBFb7LBlYh6dgyJmBy1BDsHDVC4B4nyBsVK0CIgZ/RPksKtm6qSm9NIXYeQlK3JZQu2xfSiPAZC2suQ/QadQ8s2Elg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Av9+Jt8k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Av9+Jt8k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB950C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 10:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775213733;
	bh=m8/82Zz8ep6qVTYJ0Bgm9AgwdFzKxZbEIkKxaNc5wDk=;
	h=To:Subject:From:Date:From;
	b=Av9+Jt8krRujU8R24A3eKeB3gcNPMGhBJkqVeRIDrhybQMxnhJO6+jYtkF6G8bKBC
	 FiC4n/WXSNm02SUpVkYpZ35JjmAuu+ohcZ7Wi0yC0RH5x8TqZmXmxEFuVFCIi5G1x7
	 KhRW+rEegIHKOMEH+ubszxCB+Lu1k5DB0Q307lnVScZZZpGhZ0yYnXOI/K8QKLTtml
	 jomQa+sGRwU6mzQyMevm3v/4/utZ/u58MA+7PzuVFZkVCY0cA+YY3xWepnAIFyhInn
	 N7ok7qa3JgeVEwARDU9Qa+wFDW0N09j90ElQEKOO24JVaKDDK0I8ohmW4tYJ/0uShq
	 FnHRBAhvPJS0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8759E7E36D
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 10:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177521373369.15718.16923481945839931107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9cd1798d518f63c59395a71e854d35ac71c7adcdc4c3510c2fdc404732e09cf
Date: Fri, 03 Apr 2026 10:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775213733
