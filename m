Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6266A3546E2
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786332034; cv=none; b=MFLxn0LTYL/5N2aoAKUEa9+3WX2pXrs264RTGGyvgUvR+/hEJWnpoHxsPgJ2Fb0MqtqwKzhY+2TG7GkVnt2gJeKvtg20xy3M6ej9+M0VZmMvioVGDv+wl9dwoAsZaL5iV5wu0DkqFJEmpxOE6EA/CZaAfu43OYO2wKMfNuB3wUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786332034; c=relaxed/simple;
	bh=wxQIpARGVA3fZhWwlF5Rvw7x/YPxMjp3O5BP97CeM+E=;
	h=To:Subject:From:Message-Id:Date; b=JyPKYBcnIw0btvUSqiIeq89rYdyr9wRrNT0DGD9jJeNZI6AktNS4A6kJhPVEnr60sq5IZe97EtLPPIu+WQ7FjlmT/L7+N//P4fXZ4eXlcXXl1BODpkZAE2L8m+2SXMICXaj14HP8UBl+Oi1YLellBDXo9QfMLJx+0n4IPehT6as=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VT8cvCWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VT8cvCWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D330DC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786332033;
	bh=wxQIpARGVA3fZhWwlF5Rvw7x/YPxMjp3O5BP97CeM+E=;
	h=To:Subject:From:Date:From;
	b=VT8cvCWpJuhLDSlfKI3G6Yw2htbMr8imXwCyE5E4CyXQYIYmnLOf6GEntDBzZYH0Z
	 rk6lHfQOrVhPya2VnyyaBdQlqgMQOHT/FPFfOpAkZd1LRDB1Ra0+4NM7yNLKR8897o
	 Xv7M4LxVahaKBZQ7OwSfBRfRMQhlI3BNEZWxJpg1L+nm5Fzg86/SD2ywumnzcANKHs
	 xSiHuwy0jLohBIw/gxLrF9PnU5DJwQ0RANPgDH/4WfSZRkTBEsiOvQlbyFhMDmJv95
	 j1IRQ592gU2gk67s+dgkrBQ4zg/dab/S54rcqd2tTFMAzN6DePtqSTBnDhqAAldJFm
	 S1C2OOe7wHfDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF897C5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178633203368.32130.17294839233027260408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45436bb3a4826263a37b646d986369b3083ae5022577150ae0c70fa753ae880c
Date: Mon, 10 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786332033
