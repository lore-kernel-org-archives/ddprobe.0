Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1F91922DE
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 23:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739577534; cv=none; b=Jnf94eyr0QT5tXsYo6XWXq+trHSKsNpSlNeL55cNkra1GSNQ8O4SUO0gdDpNs0FlKKe+lIsCwSRExXbstUvj5WXHju9Q9NTPrAh5lV3DTqZV9AMofqEO22FJ1kRsTt2Ugp1xNfZy0IJPAwT+NF+l+1/oORe3qIQTZvKesXUq2Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739577534; c=relaxed/simple;
	bh=8ANlcyy6nYMKm+1nv/sad054jViYKIRgog1+zlqKG9A=;
	h=To:Subject:From:Message-Id:Date; b=CuSd9k2+yoaeW02uXUyj3untL8c2LWEn1Xt5xvr2Ri857Z4Jt/Bxl3DBH7ohDdUX2qb3gxsewchVOkAGQ6EMKRSiHf3Kz9UEnmo4nNTJQXw1T8q+BIFHorxemxXw0gDG2feV1uLHCtGUhx5IzXvTFsh1jrJgMzMtdito2Qo6owg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTMBF91O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTMBF91O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B64DCC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 23:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739577533;
	bh=8ANlcyy6nYMKm+1nv/sad054jViYKIRgog1+zlqKG9A=;
	h=To:Subject:From:Date:From;
	b=tTMBF91OyEh431nPYsJBjL9x1eb9GjjZW5dI2fDpjieExJBiJWKcGXk7O3ulNKFMl
	 8d0oGOALy8zqmW/2VA9R4bjghf3RlL+2v26toxtDsopI8xGU/MNfATongcrBYxtzAj
	 tTgi7G0tvTq8j99lW2+t768x/wFtvhGqxVm968aV0ndLNnWWaWh5oH7syX8Hl5OYg3
	 9hhpdGi1sMBHCEcuDHCLyFFMzBPK7s4y5nLfMMcsCt34ZpMUJkL4aCGa5w4omklVPn
	 bCY8GJwglMkYdUq2CtKW/VBoZz5nV9nBgOJGsBCVWpgk4M5y6pel1gni/2Jb+yQT31
	 QTR7Xp6WwT7WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0073C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 23:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173957753360.4769.11838752350939898488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201c3de4fcc48577179a434e88b887ce7e5886f4afbea90e2ffb9cbdec43ddf0
Date: Fri, 14 Feb 2025 23:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739577533
