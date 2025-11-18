Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9B628312F
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 12:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763467914; cv=none; b=hFyy4zPG3tqXe+EjCdxtHgw/YVOXLd4dRAiKho0It3RJljsF8GHVUblfREbGFCJYa9YpTFv6gX3nfoWP6XudKUK5wT0XHw8oNqih3fWRWgAmzsmS0gmprSSjru/L6G8Ti9PEYKuuI8+3G32TdNrjZT+mGIwfntLebTEMTl8OKaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763467914; c=relaxed/simple;
	bh=IPoY/i72Vq6gLAStcL6fCvuudcrypXmGlqcS8owz/UM=;
	h=To:Subject:From:Message-Id:Date; b=ebrM9t71AcusjQE6vpYVkAdJbwnI0aK5UMbIsU3li4XIsmd16FtUJpRP8Q8JURj5MXEiIGBwYnlTnXb6jv/t7wtsJTf0Nl9U3ibbmBybsxcyTaNE/XPjOEnEEp466kBFT23RiVc7iAC07kOO9dQqFg49cESCXATELxPkF+e1VoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rkll1BeG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rkll1BeG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F29C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 12:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763467913;
	bh=IPoY/i72Vq6gLAStcL6fCvuudcrypXmGlqcS8owz/UM=;
	h=To:Subject:From:Date:From;
	b=Rkll1BeGmI4ap6sZHK6hD43GIVs9VTY/vQFeNbyhLcHzUrN112p1kg8IHsv9KvTKU
	 +/kQvYkkYRpJqXAcGXxT63r7eXynm87M1Yq1NF4hg0ZUd4e3OcLFqfG4ZKQk+z8we4
	 M9lP/haTjxUHc++bp0A1miXzGr90g2HBNdtsvcqCpAJNXVZq4BlXJtZiBeIzIP3uof
	 Gz2hV1zKEKhJFwvZn9ApJNy6gAbFDxseKjxl3SnwMgZBR7VVUy5ySgKSHKGpz7FuqU
	 SixRuaPnPKUMCmcJGzRX/HAcCjt5vcSw68sT9gWE5dXzu4BlDCS/HluinKqdPWLuDB
	 iRqecnzPqyPYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914F6CED617
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 12:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176346791358.825.4495611148456402469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83468bee0ad358ce652352e99e518a8e7082076a3844478a8069df728efb1f0
Date: Tue, 18 Nov 2025 12:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763467913
