Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED9E30EF86
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774712094; cv=none; b=GWLHm/NRiLlZjTFoBQJyY1LaKnMvNCuTgur/xyL5AJCF2XeI8cHvQumAmnb7IT11Fvv+fwdUpv04HV0/o9qyCwqRtOUhOdCwA2RUzlZOFqP4/H5uE7tUBdmm8Ed0bq08rpojaT5b1T1RrYkUiQjDgmcAP00NVwkm7toMzg0wYIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774712094; c=relaxed/simple;
	bh=Yr1xMWFEgbgWmiYWEa26LC/PHgL8v4vvhBbRvwGVc1M=;
	h=To:Subject:From:Message-Id:Date; b=e45INLuFSgg7l13gox0rLDZlMdK20w+sJIFJ5akYI7gsoGluhUN1VtsOWXNbn/6x8IQ1nzjg8yr7SAYk/oOd/GN2pful3ocbN8uQpLs1HgsvWFWzBNRaCVbnOWDuvcTrefAT4CSGwgU0Eo2gk/H+EgPktjmVQPt1jRPC0e3e2OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtsslYiT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtsslYiT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3DFC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774712093;
	bh=Yr1xMWFEgbgWmiYWEa26LC/PHgL8v4vvhBbRvwGVc1M=;
	h=To:Subject:From:Date:From;
	b=EtsslYiTL9bz5TUHfFOeO1zQnfRmQpDpB/EvdSP5F/TM5Hi+GX/1kESZGEs6vyYF1
	 2PdeyENLOluxv37WzJ8qtBhxJYT2KEpBqrviNW30C12Fvo+wlZC1JtjDJcarSlE/DX
	 5xFQMOtoy0grjS5a4uwvRxtPqSAN5y05Jy8uS6d8N68t4UNfaNwwsSaNmI5TeQNT4d
	 9ICKmuiH1Wo8p4qZZUyYTHgeNvqO1leFxQy7HhCHRgxHIOhtmFNwgqXqKXVcc/fw4F
	 9D4HdfmzzAphsf9hlWpNxtKYYu7YHWeHAlBJ3pjW6gphvHmyDczie9mU1ID0es/Asf
	 gvNBE3dOZOJOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9096310F3DE7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177471209358.31516.17649903610563947402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a183b333876bfe839c142378f6eca28a761a83da934c7f801917dd95ea9a4225
Date: Sat, 28 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774712093
