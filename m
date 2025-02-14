Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBD9261567
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 12:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739536734; cv=none; b=i4w3ryTUd4w8xbrkzyRiVNnmmfiVfkr6iyfNbYtsuS0CU8Eml//7J1U/HQ1UrbIvhrY2Ot1Xee4gtx3YQ5V7pQVK7aoJaITDC9Vbf5w+vn980LF8YBR5G6/uxPWJ/V7Yr/gMsZlp0hc4kFSYa9ZsxwG51n9bk0jolSFriyqSgBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739536734; c=relaxed/simple;
	bh=9IUp0uQHfwFxJW91pr4Lw8qonJTl4yM9/Y2USmqRxnM=;
	h=To:Subject:From:Message-Id:Date; b=X116MINxydFa0FeCuHWUAu/I7/Jc5AjDP5m0Y2Z8EYQs1umJuRVGZEKgOxqnA6WjKVogjfvH/QbhysDVqy/iR3KKgDDK17AdMBkNWX9U9QVy27RZFLmjlJ6HQ2VtUGMes3QqeeNSvVRK7KkoDkgrmIYOJCzbrVCanTVcEgwqyrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AM6EZZsJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AM6EZZsJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A7AC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 12:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739536733;
	bh=9IUp0uQHfwFxJW91pr4Lw8qonJTl4yM9/Y2USmqRxnM=;
	h=To:Subject:From:Date:From;
	b=AM6EZZsJgcDtqxibn5lK6DTbMq8M41uwh/Bcp9VyjRd+32ii9nvg+GJiq9tF+UnLj
	 BBPiRHV/NsKvqF6I8s/Bo8SPnvpLxjlLiMng4gtMmy1Uqjfu2O6JwqGeqHK1RiJH8J
	 Ck1FBeY/cdRzf1EbCPiZGR1NxVgoYuoS+hHaejLNShV4kmos6bHSBQxFePC4vF0PpW
	 rpSqGyZwo8uURixHlh5VUZ1B5ukjpOxgFDeCYMyUlNXnNGa8vp5zoAOfKoWr2ozpV8
	 JUjLKbI1z7IVEwvMwaUNhHWRym9w3brMMcX/rNTdj+TAO1U2e6O0RlZYmoxDvR9zNI
	 ksdVzDQnJa7vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99276C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 12:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173953673361.25525.7570572346365387520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c754085847257869cb19b691eb7c6d22215538b5cb65d3d0725a092473d467dd
Date: Fri, 14 Feb 2025 12:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739536733
