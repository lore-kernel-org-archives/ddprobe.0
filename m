Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EA41DF261
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 14:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746888595; cv=none; b=lJDZNTaYsui7kcL2sZZh5/ApzDt4PpZOu+VmnOxTo4AL/EeB/BCJ/Y3bRACP8Sm1B2bNOAc+se+kfcPPhwTpTv0i2Pj2I2zd1wZLMYa4mmTMKSbwF4ye/3T0dsZmWtwvzqofxGrFCEHmzBRU/pwP4vOG5SS27L5ITWp3eVLOa9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746888595; c=relaxed/simple;
	bh=t+u3vfJC5HcdTihxXOw1e9NOQZK04qjNXp6alf5hLYs=;
	h=To:Subject:From:Message-Id:Date; b=LToyoJmVU7icczsEqvJ7OhIKXgu8Vl8KgwY8sbQRm7IsBym8qxUyCW2P0cmYgeSL8KnPYHioBXl3OG+zImORHZ4Vr3ZCZhU3572pZyHfTN38qW9wNbB2R00nbcpP/E+ZnAETPBuiImDZNIGbYh4Dg1lRe89QvmtE4D1PcS1BGFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8O3J/aQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8O3J/aQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8688C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746888594;
	bh=t+u3vfJC5HcdTihxXOw1e9NOQZK04qjNXp6alf5hLYs=;
	h=To:Subject:From:Date:From;
	b=P8O3J/aQm5E8+Mag5KWJA2VN2koxGwsC49n3qw+DIbytWvhIjkqZ2sD7nNs93Ma+V
	 tLunX582UVrToM381T3lpPcLSbxLnM+MuPp6bZgg50mwkQVMWF3U8YAanWAA+lmNAy
	 vWaevQz64pbrGSkU7hU7QyNCkMdREmyoQLr63mw6f/5wwxAZrHGP82FTZ7qntJYfOF
	 UClZuuu3zTM7ypS40hSCU/STgKjCaZPTuSxGy6/oFfH2zus7jfkAvze+U2pOrb9WqA
	 UNFLgGSyzKthAcZq4ERdxzSFZ447oQaVq/21dPN6MNwI3I1ROIuSLSQS+Ny1Qt0D5d
	 Lnlq4npgfvFjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958DBC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174688859358.11476.10561904483176487423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c5e4444fa6df0743c8b6610accfe92c8b41d0271ea1aaa898d03ef4e811c7eb
Date: Sat, 10 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746888593
