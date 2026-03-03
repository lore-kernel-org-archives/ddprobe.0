Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D23BA33688C
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772574893; cv=none; b=d1JBd+4TsR/YIyrID8PbQZDN3S8icv479aKYRPC59VSsNzfhzpO+ylY8FX4b+tykdXhj9cVATkFIE5eJUN2MX+AgH3waj4BOHVc+osb43OKQzM1Y8RjPmHL+05b7iviScDoDf0QEtnas9cJ9BEZcnbz/3vgPcZi9OUz9EQ6UNU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772574893; c=relaxed/simple;
	bh=CFCNuPzIwxLRjS2tLsbONOH+gIH5LI+x5u66k2Ue0A8=;
	h=To:Subject:From:Message-Id:Date; b=Ho1xN+fcV42flIWtwoPca63VanFdAtIkInnMweRXRtCsYHr5S+YGvnuem+ySGQ6RuSuIspN/iZIFiF9o9ovp+VRO5aGnqtL3iS7ETDtvhkAqypfgpnps98xU4/xYGTuEmk0FXx33jtSucjS41aOEI+Ip/7NATI9ARLCPUK2Z2nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJofbYvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJofbYvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FADC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772574893;
	bh=CFCNuPzIwxLRjS2tLsbONOH+gIH5LI+x5u66k2Ue0A8=;
	h=To:Subject:From:Date:From;
	b=ZJofbYvW4uXWRhoZD8n+Tw2hZVpCQ9j8A+7+PhN0Nc+IcGrvznNLuwKRIa1DrkX/J
	 G1l0HAuL14Hi757Fsjr7p0NLwCeFfR9JGCBXQ6Uq4sGiNfmRnZqu7MVAQYwckQdNgW
	 FT7rpWe+aZsxGnl+G7Sqltoal6udagJrtlaWEEwQeDM4qrXaLtulHYp4udKdaGLe51
	 sxxYHB0S88o8V50lBnSU/S3YO6VJja0jexa+gogfUk/qjzA6cOZT2swPL3mE7semn4
	 qxcLw5Bcglc/WzMHJg/y/f1nOTdItMlERqEx21gdjT7xnugG5Zt9V2iDwhraa/3hJZ
	 Zyfj4ff+pnBvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A20E9EDEBFA
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177257489364.11599.708074220456644576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c40c1f30c429612a8b344ff99bf4e9c6b3811375c37eeca303be889b7eb630c0
Date: Tue, 03 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772574893
