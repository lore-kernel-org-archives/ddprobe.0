Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3953D16DC28
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 06:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779430954; cv=none; b=j9e046QwYLDIAg7VQSXfcQsOaNuhJ7sha+Qeup+seXMKfe0slDulM9vdyzETIxphVf13zdsEaKIH4U08cwz4LDrAAqUAyi1FmwHZJBjde7/9hkADaaIaVvUyRrZTOlyKa7b+pvaIvdUgdBcoxvvRhNfEGYMwdXkBy037hI7JlX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779430954; c=relaxed/simple;
	bh=/Yhe61OrgGxjqfBPh5U44e6/IczpCifFiWTmVyvEfLE=;
	h=To:Subject:From:Message-Id:Date; b=CnlTLpXoSVc0jn59WOhb2Db4/4LrFRWSTZKYJktMHbTqsuNaQ/j6y6pioheFm7M/1gvvTSZCwQHgCHdMPv3fhxnAg4GEAsnDzvoZ/41/sZ0HaUaHtf0UrfE120npKm8sRir/PNcrT/pHFQKtxJjqhBTOYKczd8OozAksFImc07U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ev2pQTEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ev2pQTEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE038C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 06:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779430953;
	bh=/Yhe61OrgGxjqfBPh5U44e6/IczpCifFiWTmVyvEfLE=;
	h=To:Subject:From:Date:From;
	b=Ev2pQTElrIi5bFKOaXKznqULNO+LTNNfs6UgiMcDLa2qdQFuRWofPc92R0MUtZ89B
	 Gish2FZTEhg4a50Cs3wY2vjD5lq3q+a1U/plJQVyvR9daNM167AjP+zcvqPWVuQp7e
	 5mH1yKxobyuKgE1dx6Ug5Zz2epVpqP7cUCqEdRn4/cnBjKhm481MH0SRIA8k8Twrjj
	 oU0O21A5VtqMbEbH+TzHdDWWfG+n3n/S5g9A4wLc1K/6+k5YfGqfyIiL49QhAv/2in
	 Usrr6BoJkm0ccus90Y5cMbc16HmgJrTOnKdDUphDfTF4UhqNqNBwOSRHLEJo7n/Kco
	 VZlzfrVD6+Btw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89B7CD4F5B
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 06:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177943095368.27797.2138651582916678740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8fae07d9ee2f580aa30224ff7ac22bd3632c43e76b7798867f03942942aa3bb
Date: Fri, 22 May 2026 06:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779430953
