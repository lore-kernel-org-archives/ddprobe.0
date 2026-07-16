Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9293F248880
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 01:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784164714; cv=none; b=OKkSjifx98WH7oKM6GQ1kJ2EaBsN8hqhsK2hch7IXHHBmPs+EAIejNy5M6dig89AF+/oIPkId+QkgMQr0V60m4aTlbazPqypjabX6V6g4jYlEJn0BkD3Jy+A2Zvgu1rq79xXGg0vs8AMvpWYRBJ5lE3734XdHkHA8S0UDRfHK5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784164714; c=relaxed/simple;
	bh=hgx0DozEHgAXM7Ujv1XSIhsyLAXE/WdFsDIa32w1zy4=;
	h=To:Subject:From:Message-Id:Date; b=fYXoH5RB8Yf0d+HKmEFApXEug42XkNrc9M4+TnbBKOE4l8yOsvTU5DI7ahaMn3KCWS00p8aB2SdxD3H583F/DPpUTnMDlIKUL4XODe5MJ7TrWyZ5ozgcGnOD8GLss1oYeXAOhrSbqH5SJHeFXpiCGFY4YNf137DpFQVrQ+1LlWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oul7nvyb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oul7nvyb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F2DC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784164713;
	bh=hgx0DozEHgAXM7Ujv1XSIhsyLAXE/WdFsDIa32w1zy4=;
	h=To:Subject:From:Date:From;
	b=Oul7nvybsmVyoyE5YXye8vkiL65+nDXrtw6zRUpudIxFf+WP2EVu/07tCYyPvvGaV
	 5YVg+6/59IqFDqB1QXM8WXgbn4YILm0fJDWsJehvpbFGfyq++rXcPM2pF69RbJzaTr
	 aQckN/D55dNboD4So6l2ixQCEBF+sMWFA+MkjHIX7QMOBpP0P0/MxFI+5e946sBOwd
	 dg3uyuuFUjot18RY2LTdw+swznXgcqYmRv03V0A1ehjn+kYC+nzumA1bnnDquHueI9
	 ClsDr2sISx/PVDmgvZZjUUMp0gmw/3DNfTPnPhxYEzJu9P/ufKWfi8kL/hegLn0MvH
	 FZl3Alv1secDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EFCC44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178416471372.1506.14167867008110685972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 204aa719d85552a439e0ca39175cf40b13843269264bd03ff7aaa392023c3bc1
Date: Thu, 16 Jul 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784164713
