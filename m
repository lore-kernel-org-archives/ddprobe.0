Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D98219E98
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738702554; cv=none; b=p7tWc8WpXNjtanl8/5/7CJud19XPG57MshDTzGsdFhwQ3qHkeqsITIX9aE3986W+236Uu0sx0BTcmPdVhwzUDZsbcZVn/F/KJaevorWWJynrYC3UeXbL2XXrJ2u/qUaMCI9enRFf6PcTGBSObdVF0EAbMsPQy6kHanJKy15rFe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738702554; c=relaxed/simple;
	bh=HLfMCGF6N5yvYyfNn6uqmg6ZwjP0QUHXuXuCrmMfkT4=;
	h=To:Subject:From:Message-Id:Date; b=FwMtiqnjtdjCdiCytkqvlql7bch3shdQ7OUBkWF2QJwZ5gKvl+RoGtRcoH5Gt7Iowe/cFbL0ebY7P2MIFbP2earcIb6aowU7lIhG1E5Nnnkrk2su8BqOI0mG/1ibDyK0MHgB7xBlCpKhl2bKNr7Zija7k92QsIWT1iDs5Hy/O20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pg7Gopqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pg7Gopqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B6CC4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738702553;
	bh=HLfMCGF6N5yvYyfNn6uqmg6ZwjP0QUHXuXuCrmMfkT4=;
	h=To:Subject:From:Date:From;
	b=Pg7GopqhM2Qxr5sC0aCqJGOdTU9kp4OIej8TnNgyxzKtCxxe1nHr+nHomuOLblrK/
	 7XIUQxae+Zl7Ny+HlPcIDFVqsDtClrF5Dmnrh6mHgD3S/b6yjA0qKyAMylgaxSVibZ
	 XJGilRdrPkGf3dL1NYerlBl0KAeMTZ4lYCUECiim21WhaAmhnpcs4LAYelUX6deqYE
	 PvcC+C+jTlav4tJ14/38r0ysdKRNXzELxzn7Kc9aPUqX//sPy0yhqPkeogbHpOrPUD
	 bZmubhP05U7pS0iyzPZSJwD6cxOLMULcaiYLIFCcWPmBmiIEVVn6HX1OOXXVTn5ZIa
	 Aaovz2jyNKXnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9695EC02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173870255357.25396.6768880692353891238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e1149d3cbb593b5556b54c057c117ab37654bbefa6c05e285ec388b73661b6
Date: Tue, 04 Feb 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738702553
