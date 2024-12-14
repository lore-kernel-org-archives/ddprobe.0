Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B8DEBE
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734200754; cv=none; b=DHBR6bj96kKug/gPPnTMup/+2LwcgeuM/pVjvoCvlFi+l2U2SxSFC4zfBwVyuwPEDl+Mx0PhlYCRV16GorIm1cEi72ovQ4Rx7hCtsefy+1EvWyy5gK+/56i379m96dDfteiuO/EJOUxkIKvTl4nkQS2Jj3H783qQjMURdkHadfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734200754; c=relaxed/simple;
	bh=Kx+i9Nosq0KxWepXkf1E7LPPUNZ1M0JmQNqbdXcVFD0=;
	h=To:Subject:From:Message-Id:Date; b=KiGATLPEF4aQz/VYRPinTOj+3SrXhbvdpbxv4is/itF8rvbmiGiZ+F4DxmC0kH7C92H56XmcXgeWl8jdcqEVlCgr7DoBI5WE9EdrYobyMEIImtj/Bgus12DcNrWkjKpyGODwowrTJEoCV4fhmvoWXh7t8pabWbIACtYSXDJjL/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLy9kzwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLy9kzwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD44FC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734200753;
	bh=Kx+i9Nosq0KxWepXkf1E7LPPUNZ1M0JmQNqbdXcVFD0=;
	h=To:Subject:From:Date:From;
	b=RLy9kzwQPLzT0ZdO9tjI/SNzHloesd0gkV0PDNyR1wwl9mJGG9kHMsYVlt6nWmt1u
	 Vj/+USHUbEPDZ0k170Uao+os0Fc4o3wcZHAY9qoozBWnFGgLg+OjZlXuH1gratUul2
	 csbZoecszU3EjhsEceYh7yNSQBs4xQck1mFJ2T1LZC3cjbve5JPbuZcPkr7Erz+o3R
	 pSikJ3dlVee0kQHnjT4sJZzYX5d44XLJddtATv17KT1lphszIjbKJyomd6aNgWc6Pb
	 LOmwlzadWdRf9d8ZQTMhiP1h2iYVr3AGZJv852HGfZD83DCbHu0Koo9BcxN5S3UfVq
	 7Cy2IX2VL0DSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A971DE7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173420075363.629.18418113422298783665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c70781ac5469612ac5885a4fba26f2cddc8c2414ba389d729f362bcbbee56d54
Date: Sat, 14 Dec 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734200753
