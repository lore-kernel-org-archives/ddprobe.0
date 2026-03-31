Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145D536DA07
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774934094; cv=none; b=Mtygmg5NRHJUXq6F9mCONNpqpMY82Sv9oIVbI3OdMEdcIVxiD0/7HDBMTORMDEorbzo2u2bWKPPdLH8Vx26VcJHbbJDf9xITwAg0kOsgxgmJIf7Uq7tLhvhmx4LTSh8W9wzp38YIlQfoSIKwz7dm9gEict8IXlna4oxa7KKWLoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774934094; c=relaxed/simple;
	bh=/38pQXYwzB//IWFJ6uN+pxT05qITNbvZ3AfekmGONIU=;
	h=To:Subject:From:Message-Id:Date; b=CmlH4Ita86x3O3rgBPQtcKwCN4bB5uuU/0N04SZlMG70AE9s/41WgTaxa5CJ3YyV9zxwQXhJ0AIuf9uEyzblFp4/11Irsbnxr5endcS/DX0HQwKB1q3UsytNyFykl2BN9fJKp7RvcAED2kFJ94gfJBxbrqIV8Ff3OQ0xbSZO5dU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bv7HGVmB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bv7HGVmB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EBBC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774934093;
	bh=/38pQXYwzB//IWFJ6uN+pxT05qITNbvZ3AfekmGONIU=;
	h=To:Subject:From:Date:From;
	b=bv7HGVmBvzahGwUmQ4XvePom8tzWf0r39bg20GQAdwbf/67svXlElFVPV88mm1qSe
	 z0QD62RwTi4dCev20fqOmqlk0EVxzplvdn4zeNPY197vGCdrm/Pp1+fPwFuHCyRJKo
	 7qgvuAUcMtdSWwOnmpcyhn2ppPPardBiohZjBYKuWtxSsukTJNIVBjcK2iOnm5A5Jp
	 3QumyWHtMGWSlhiBlgio2P3oTYVXfI642BFJnZHZPQ4YRkHfOErqevx3dPxD986thZ
	 h31Q+ZHpG+hzFRLKUIcBbtOruPYRR63q+WFo7wyOTU/1bLTKbTP/nnbSUt3nG0Xm+Q
	 auf+cYRHpEv9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C4CFF60C8
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177493409358.20105.5216210013603517627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a59a0b2828b8efceae5d657532cec1f25d5055dd7c1499ae23875f82d5691e60
Date: Tue, 31 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774934093
