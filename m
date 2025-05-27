Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46215CA5E
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748372394; cv=none; b=WQmMbKDZ/sxPzfEaB1xnSBpyth7P5n9TY4ErjmrZrrdnPWYNp0Oqj12gzlw4Ybakc4ZdioUhxfPfgdcSqu+sinbGoHdsnlcENRBwLCohTFaqTqw1f/U1mL+nDCyXaUcqKlFI845wE/9/EXF61SvgWGDmDQcT4QpfLtfqiG5AOTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748372394; c=relaxed/simple;
	bh=nTnldR40UUb3tcCnVymKyVDGfZx31Sf3h3rPWdlQ5WQ=;
	h=To:Subject:From:Message-Id:Date; b=nQs7vnvxVB8zs8NjH1tziTJo0CDuaErCAK7CdqybXu+zvqUp2PykXvB2fnOdN2KRiW0habcCVe4mCUwW9wlZc5zqaltSOJNYzYzPoS7pWam3QCPbNJwaidiTt7PZswAhJ/XR9C1XP8VMiSjEBSGyIcsf+nOuL7ErHO8tGnnrnJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uuhDv1vR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuhDv1vR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E05C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748372393;
	bh=nTnldR40UUb3tcCnVymKyVDGfZx31Sf3h3rPWdlQ5WQ=;
	h=To:Subject:From:Date:From;
	b=uuhDv1vRKuQO9KHyjPxBIhVGl/j0LGrw+a8sH3eMXTTom2Wx/BDM0RK+9oA84iGmW
	 iCcKISKcI3cReyUsNsSPEQgYTY4mHuwtR5KpqVaWd75erqsqTxmNn0U8ZrBncP5G14
	 ZgZGXZxeODj1EmZiW0g/CXZwIR/FHyirrfCr5tiC7ZglvkVd2ZKKsEj76HDhPOHWDW
	 OYOOiunX9H125lQT/ucQTxGY6QMIz7yrh120M4Z4ob5B+rkCXL0R67NT6YnvXTdiXB
	 Cj6ZHDWr9Qf77M0JRDY0AmFIIvtksU5RCgh0wNOrA+Wb2jTZDUpubsAaJzciONINcM
	 EttzJkOwukQ/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ABBC54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174837239358.3522.16294953798625395281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ccbf3f5f60eae082213e04832577abf2f2028cabfeb3956b0663de1cc184ead
Date: Tue, 27 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748372393
