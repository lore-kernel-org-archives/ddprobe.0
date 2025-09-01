Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB201A2630
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756719594; cv=none; b=pYWpdgMmAjNlIa1Y21emWW7phOaZTZvcVX6qFsdSa0i4mqfBE1foIDlAskmskSWQpnKYX/DrEoGidFGvIr6doUFkLl8bg6CHg2w3fA+MsBk/IrFAT4PlVFgaeZJ3U/kTL85rHOE1YvLbHbMr5Bb4O399RssSjW/Kwb/i4oDUOuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756719594; c=relaxed/simple;
	bh=dOP0yaiwnB7hF7FGFAnrubFbaN/Rf2yvSvFPk76UH7c=;
	h=To:Subject:From:Message-Id:Date; b=YPhen1sI53hV8pblNsiOK9mz5J2XBefBdyEDyGSTSUftECuz6cVYg7rS8Nmy+cz6FctuHfWDusa6IG0qfRjafF1NJmCu8BlF+Cn4L+a7cBgX1ui7Y/+Ud0k93GVipQWXkRtgUbDvxD3eDxr3NO9R0Us5T82mge1VAodib+NxOMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJnOaD9Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJnOaD9Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A8B6C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756719593;
	bh=dOP0yaiwnB7hF7FGFAnrubFbaN/Rf2yvSvFPk76UH7c=;
	h=To:Subject:From:Date:From;
	b=AJnOaD9Z57i3oXUBpsfIyPsfQcNGWQwBUswhjXRzunQZ1JvKLb0825/0JanZSs0Yf
	 OR1qsreaQ2iVCXFUagnyIAyJbooyCswAxEy/lY9xynMB9X6KV3TptEzHBRbTIDqR1F
	 097hTEsqGfcct1MEX5oO/Vn2Q48HQBnOeDJ0eY6bBw2+rqvEik6h8kZVMeV90hV0o6
	 nlKmv6n0edIUQMsl3GOwSoAKYWbRDfB9KPrrCyIBT88Nv6o3OeJ0ePz2KzcZp/ObB3
	 cEt+uuB4nhdHY+R0tSciFMUDadC1ZNYd6YRu4FDLDg6p+TWiYr1Fv79cCz3qU8aPlm
	 oSa5VKFUOn7zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4FCCA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175671959357.7635.12851944446356902122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fda6fad14e44d59b09502b7f012db10c6753771c52cbef646fad043df52da226
Date: Mon, 01 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756719593
