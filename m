Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E66543E095
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 18:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784228314; cv=none; b=G9cKsNU8N88Xpi8a9TfwGlwHcX06hHxwperGqCo5e1OGtDqoezyxNgNxcAXXGQentOBH4TYOXj9F5CUacuXlRbar3Yy0BGn4JtHJaaK0/CpkDxO7bagK4WR5lDZG9YdHnW6wTz6FWxgICY/sdOdb4wCBxh7z0sE/i94Wmva5UDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784228314; c=relaxed/simple;
	bh=NcO4wsW3j2asMDpsnY4Xq7gsIQnwXYM/YsTbtHcp8Zc=;
	h=To:Subject:From:Message-Id:Date; b=iQuVRgZdP4+WBTIvT+ZHxSaLbXz15KWhtLdiZEfxnC1XBfbWOjCzxUC9Yn24p/T3Ah01Z+r0o+W6sPOP4ydlFlu58IZr8e1i9kNjDYaNgFwRr9a47Al063kSH4WOmBnAFegYvMPjPkzE3YCfsrLkB+BZXXHz9RMjGzQ5jQHyvcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uyum+64x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uyum+64x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC68C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784228313;
	bh=NcO4wsW3j2asMDpsnY4Xq7gsIQnwXYM/YsTbtHcp8Zc=;
	h=To:Subject:From:Date:From;
	b=Uyum+64xUQUrmJK7kz++xOMNmkSa7QF0/Tbf2y1lY08GAaWj2tqdA3OQbMLDjKoth
	 AiwIoBDV1cOwSmNZwQGaepR8vNZMuC5WG8Dopun0xMJv+NRyil6hiQU1cplXYPm27F
	 b2LZ/zIAketjyHQ2TAQrEWOIidVCeOZT01yb7CbavGDkGpcE16YOA6ZEjWyMSv2Aqs
	 uQ6qHvFHHH8Cxsil+tVoHpMPz2w2d+Wb6y0EsliEQfxzMASc7iJX1sK4RPgm9Gi6vi
	 9Ip5D0v8N/Yt1v/jgtLfcqZla4Auwitf2tJNNKqXv6zXmPcfEZOoC+AnNXHadDHoEo
	 eiTReD/R3RzWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B52D0C44515
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178422831373.10720.3483012229784374890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e8b18d31afa68201afdb804800f7cfbb4c922697ac012a333cf86a42779159c
Date: Thu, 16 Jul 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784228313
