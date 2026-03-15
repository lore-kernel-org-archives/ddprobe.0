Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBABC1B4224
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773570894; cv=none; b=XX7u0urIOOjkWhn/olbb9BcwSGfFht5Kgbm/gqXelr9jN2lwhVkIFpvO0gV1i+csmwlzRBYvZ/7CGemEWxx7Pq9XLhE8U3h5h/olSGYNQsof7V3FMV3iFjxzsyNhikETg18SR1tY1fuhdGkZ7I3WkFJkRyk+fKNNhEMYbGE4QfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773570894; c=relaxed/simple;
	bh=BoHDBsvXrDR5QstGsb5j9f7hMfhjQ7ElnBCAq8ZQkng=;
	h=To:Subject:From:Message-Id:Date; b=XvnloIBwzQvtG5mUnhfuWv8PaWS/W1tp2kkZiH80Sm8JTD+U6mMoh4pP65N/PmZTGFDx4jUC7FEO/+T0s8J6ii7VCZdOccA84a160Hs8wDQWZ5FwzNvxXJgnZ0AUwCbJW9Klhj2GtIYnGA9fJ7iM5IuMQyRvzCzztnsyNggZzqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O//Orbsm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O//Orbsm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D3CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773570893;
	bh=BoHDBsvXrDR5QstGsb5j9f7hMfhjQ7ElnBCAq8ZQkng=;
	h=To:Subject:From:Date:From;
	b=O//Orbsmq6ZoHFToNiOqxTyeDl0qPpZFHrqFRK2t2dHQLg2rJblf1MGbzYC4qx1Cb
	 llpcMe/cAhUG8eLA+207a+S0pp8VQt29llsWZnMDfs7VqBcvcF+a2opWyegUabUW8Q
	 IzK/PzW6zJE7CD+37EALfOtktW6/uPL/w4B3c/2btG3WQQofCZb24WFyeLan23v6uU
	 x1SfKQ2FD6Gre4+AxqPcqIN6pP+JdNZ7YmJ+w4kggXwZUjLbj50ClggOBqRZ0k3Thh
	 /6oqHqOBFUWK8i6vYhIELOkiEfe050TXp8P5D3UrWmGeaQdep6tn30QJzZEeEhsE12
	 equ/4wBugn8hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E08D58B17
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177357089358.22720.5175600606762417026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1992e0d569d99f988de90019843d683033c0d11b9bf6db30e5516b1b07847d4
Date: Sun, 15 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773570893
