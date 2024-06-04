Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1F41442E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 11:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717500323; cv=none; b=N6HUW3C/Vo2RHDb3sx2zAbehU/39u/8QwRj/WFqQW5mA4DE2MrIXbzk9nT5fTiMibOAXoI2upLhi/xDn5ezYFCIBeWitcm5aPm08wEuxruQh9hXFaRaI6b/nfEh56X2GYIkTt3O65jwZY36/Q6p+cGxu67wXjhsfssSQOekvID0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717500323; c=relaxed/simple;
	bh=XF22w7+AMMFV2pJpXnobzHPHNLkosyZ56oZaKq+QkM4=;
	h=To:Subject:From:Message-Id:Date; b=Hu9uzbBcFM6v4gver7e6sBE7TpH/tWAHJvmzQnKMo07yGP62tJqiaONEsgBuQqcuU4j7/xYYvpMjAb2u87rPk2cqxkGz0d8lBDBOmIR8UX8VBw+9+53ptq3fRxslyBJb/OijnDYXBRqP0S1TL9F/Ia0i8yQ3DAPbIx/WPISBiZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrsgGZUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrsgGZUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E307FC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 11:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717500322;
	bh=XF22w7+AMMFV2pJpXnobzHPHNLkosyZ56oZaKq+QkM4=;
	h=To:Subject:From:Date:From;
	b=hrsgGZUE65WTeBUHmgK6mYIlL8sygkvuLcy4+20Zrk1gXRh5f0O4O/wNZe54RW0go
	 xiptu0dKr+gID0cvOgGO3SCvLLQmQvg6lxg37y0FrUyyPuqBcWT84RmhNFJg7fe9WE
	 l3tQd/MrP0MjjCmCIg2gN/RRm92wj7495URh5S+6padBIXPQLUMqd0U84STG82Bsb/
	 H28SPMABNS69IX9CsKUG3lq/Svi7ik8zWcO1ugJQnBkUwB0hhy4KI+Y/SuN4c1TE0s
	 1WY7+r3uXNmfAZoK/ZGC9Qqgqk7HR8vnr3vurth6Vz9BLVm7NmPuL4nTiH3OkRLs9u
	 sY7W2WIli6+Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC244C25B7E
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 11:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171750032281.6321.12611410231576324269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29fa033702c0bf72d56718fbd70ae5970a1ea49d43010caf46aab82e3c28d1da
Date: Tue, 04 Jun 2024 11:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717500322
