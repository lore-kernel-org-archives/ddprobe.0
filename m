Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585A5A932
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738481154; cv=none; b=U6ln25Z6RBRuJJmh2Vz12hd6YJhqlDVVkDeWA3TIEXAVeGY/mQ7rdsLRywz+n2cWlcROtUVSkDyWecEE3oTu8HVowyw0mTah2t0mHrpET4f8P205bERu9IKxODSF2MyEIXrdVskXaFN0ubxUdUtJaR92zA15aFGuL9u9xWozSgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738481154; c=relaxed/simple;
	bh=RLo5O8G6uKY8+kQtvV+E1MVbofAOqbFZdG0m6U/ciNc=;
	h=To:Subject:From:Message-Id:Date; b=quhUcSW9t+K5nEp/tpZU5mFQtzfwykJiLu1Qi4sKHPEQEtxa53Ud7EPp3mgMgQHk8hWYN2JPJ6RwHidEehlhbM1P9S6/cXW/J+wf6B4alDpQZYTken3o9Avy3v16O3cE+8H67n82fBXVNAH/L3Ao5FNYgC7nSHJz/CQh1NfUwuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPNCLsox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPNCLsox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD006C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738481153;
	bh=RLo5O8G6uKY8+kQtvV+E1MVbofAOqbFZdG0m6U/ciNc=;
	h=To:Subject:From:Date:From;
	b=JPNCLsoxzxGzZrXw5sFSXhSSjHcvJVTNnR75+IXurWEPvM/Hyo3fRS+0T2deG0DtW
	 a8nyJDoXSFRC/6ANKfsouPIeaBIHz494v2G158Lsk2Cj+/l+ELfvPsZZD+z29b1h16
	 tvD5VZ4FI80Dqzpv39WhNqTGhnAw1HQ065XNQ0hmNwF6vKf2QLB6AY9YBiYkcSMNag
	 xRfAeYmtu3zG40U7dKnmwv5pIIRNqg9jJK5Ubyx2B4AzrYVwEi10NrQmrJWxUPkd4Y
	 91+Bi3+Z/0Li3DWKn1FyInHm0aKQDsEOcaGGzXUGwSdxt6/g8e1ohFPrzsvyswfJK/
	 4c4Uj7Vd4J36A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C29C02190
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173848115359.12427.13174167144864825746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9db7d2759f901de822d608774798abecab97c4b30835add28590c7b03f3d66
Date: Sun, 02 Feb 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738481153
