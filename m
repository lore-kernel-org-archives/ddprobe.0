Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120553B2A0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758823794; cv=none; b=Saa2l2C6imEriiA85U0YgVe7mHI+oZ0eaueFqSgv6WJRCoEGxijFMHmZNM6nLT5/C2/qjtSyO+b/fhPaScXTYLvKbvU84wj3O20kzSSk8kufSjtrPXqPGBYdSDRLvpKlGs4f5qh96Mt+aeL8bORPSVDUEyayHtep8eYfGNdFXsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758823794; c=relaxed/simple;
	bh=PJr7Sb8F4Fdh6F7mnjlNIPS5Dthr/GP3zf0AtcFBHCI=;
	h=To:Subject:From:Message-Id:Date; b=tXbmWAT9tEpWcVqsry1MpjnuHN6oxQjO4U1DBTrw04JGCldDAUKA10OIp/3NluHKpCXbMsaaNM5Uou145pRwnGZMDv0UHMegKHzzKqHFkOyV8fzQa5fhbs5zmJiQy4jcNdPFmxKAqgooGZ/XI+lO+ZOWkwT8pYug7+2Gf+BIxQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuaYWg4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuaYWg4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13E9C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758823793;
	bh=PJr7Sb8F4Fdh6F7mnjlNIPS5Dthr/GP3zf0AtcFBHCI=;
	h=To:Subject:From:Date:From;
	b=iuaYWg4JZMIr4x6FW+F7Z2JoKvmM2i4BoUfShxAN+9nHa1bJgC3B0gvyALnR+Pdo0
	 805G8kRhmnkIQkgmSS4crp2jbKbEDCmP7KcbCwDa8JTxbKLuXINJT8Ur+tjO0QZJnw
	 e29Uft5E8UvGfGc/h9ZZYIrUVN65Pmk7h8oP584+0IriKBkeKmJ+31Z+4RV+AmSbgq
	 aCKttBzJoCVJeZzvfQWImxmGzi/9OECys7M7ROukatcQb/VzcgAaBqbaq4FpJ7ZHJm
	 AKnVKB9CdHePJLtcKGT2xe4JmLg+hkrx224rBTHdlEzuzlfurP+1vzEB9yXPYsUxg5
	 /AJJtqqQ2IdTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9143CCAC5B9
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175882379358.6555.13398288603071824236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef4e3c8218ecdd826e0ac896bc061e04f656919a49f10ae6ffa4710fcdf7b27a
Date: Thu, 25 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758823793
