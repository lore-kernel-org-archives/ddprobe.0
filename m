Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BA019B5B8
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745056794; cv=none; b=RLi5zzTsDhyCSKg/XKbDzD6pXcSuUeezBY+tlT3Sa+yfu85y7ZD49y/fO6J0M6e2fT59bVwrjrhvITBOZ/V+QPIXcWMUd6HeAM0NPiInaWPRNTGu08DbRo46BT8P9zXuRVbXaQYz1l1dEjumJiDNPy7vQrfexdAwQzmj72xGbNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745056794; c=relaxed/simple;
	bh=VhwyqfPS2XEYBMe/3bVdcwArU6YE+Ad8kojpPD8GOv0=;
	h=To:Subject:From:Message-Id:Date; b=VciFiLF1rMruKkD6vKMazqL1xFOBED5041/rGlCZyDWgEdy3GPajtUAHbRw8Uvo262S4/hst+LLH+MoFHmF2ImJM9foxOLIqX7IeB9gaj5/FT6AqwmJoaaMfZeYdoMJ5p6bUzm1OSy97Ay2u33TihHKQCNmsPH5u5XhYzIBGg7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZMJWGm7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZMJWGm7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FE1C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745056793;
	bh=VhwyqfPS2XEYBMe/3bVdcwArU6YE+Ad8kojpPD8GOv0=;
	h=To:Subject:From:Date:From;
	b=YZMJWGm7gbol7ju5QJZWoPTR7e5aWLCdnqc0RY6RzsGmsH/lCsoQZqY9E0SuZkT9F
	 efcaiVAzSbvwyoKAYZQWdwfZhtgGHEcbrmTHXm9mb3TrFkCqEsMI+WkJPFp9iDBdPc
	 AG/AeMipctCHV0yADJO9LlgOq3K35zXQ1Z0dNpnE/52Nm+bsWJ9I4lw+SzBi0ryeKT
	 hC1sdTYY8q/I8L2IDYwJT9oH3hKsVMOu1hF9G0/f3sU530WlO2SeUobIWgTsWkFQKY
	 phX30P0us4Bz1AjEuV9iNduIWgIHlSX3U9eV7daWUuvlY9155yfcbdD9sWYPFRvohU
	 sM2d4NcbU4uCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FB3C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174505679357.24729.18337553923114214868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c968d47eb814ad330d0f24141f7213be248c497bce5acac82fb9d88c09b35467
Date: Sat, 19 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745056793
