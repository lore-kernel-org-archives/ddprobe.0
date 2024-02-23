Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E64631119E
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708664297; cv=none; b=j4IH+bTiwlgSJaqSaVwkA1O6nF+z1kR+LopNYanIq1tv4RFYJBBizJZkNRtwjjfEX+X1vhRDgJkBsd50A99J8ZhMaJJ6IowNpAL6/n04BpG+NawttQtpH77Pn+i1wcJmziGZCxBoimwk3ei3Sd/9Dq466BqcB+ItbZBN8s8m9LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708664297; c=relaxed/simple;
	bh=Zoy+/riCeMlQ0a9WkuxXYViheg3bBRtr2qNOvEYSsbc=;
	h=To:Subject:From:Message-Id:Date; b=jwAr0FcTh8TEMewZvp27Idcbjk/pM4KpxhNfmxqnsJrQdJpXNuEtQ77+Do9NMMg9jRpxcfKkI2Nkvy+Afbj4InOVjhxr4vBsRK4mDqG3FDS/R52TyJ5tta4nTMGkLOT5jiyNxgSvQ0SiJDH46X1Gtc5zg+zvhCeD1QP6J39RP3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mc7JcFHs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mc7JcFHs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81FACC433C7
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708664296;
	bh=Zoy+/riCeMlQ0a9WkuxXYViheg3bBRtr2qNOvEYSsbc=;
	h=To:Subject:From:Date:From;
	b=Mc7JcFHsIY9lFbXUcB4fr0+zwnU7ZSUme4VxjwB3ZjjPVyeAGaeY7PJhVeJrT0mQi
	 8j7G7pWxu6uT2pVeCN3CIRdmHDfykt89INkcGgedQXXpnuSwzlmGk08ARIKafKijFU
	 OysYAgy/VRCmth1yg0Hzgbs6OGj4bJUTuBL0poIKhbhYfULv9aSiWREopJAx0Y/aMF
	 g48KadbhEAk51qjg126Rk8lytmysiZVNS5c+YqRSshtJg5IhBE2ShcL094+85cA4Vw
	 MPDlFAn9m0DZ4KfkO5KT65khdmFs0nnqp+nVkAmf6J/HDsXC5VpcwXmvlhQYAXUOAa
	 OXN9djecc+x3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F3CC48BC4
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170866429641.2468.14391121348088854911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37dac03161f74960f6a2f5700af8e376db1a1c231c88195cda766aea97e0bdb6
Date: Fri, 23 Feb 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708664296
