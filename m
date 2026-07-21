Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A9823EDE60
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 05:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784612914; cv=none; b=d89fl9Kl3PJhjf1gdZwCGk3ccScCZwywONuhynnsR9Q3kvJ3Y371DhcdABdHgdGZjeiiTbQ1VYA+CsXl3Slgpj+bI42WkqydN7tJ+3/VkVJr++G1QoB34wUrbKx6RyPbSYzsj/bMnRC/PmsQPYxZl5MYshrvtqEN2RuWH33sm1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784612914; c=relaxed/simple;
	bh=VpEhVVIuYLud7Rc1pXeuaUhLHR/5j6tdmKUbOZmpRJY=;
	h=To:Subject:From:Message-Id:Date; b=AlAbyKKzdvq8mZ6wbWMVUupNUmi6f5sYQRWAu8iKMFgfQFn2XT76AuHC+YQsV5F8wt2DAmeWLwXAgzgQ9INJsWynOufc56bpPzL9LmQ66boN2prYcQS9hHL6xXll1T9Ou9ELYMLhDPymdpH7rYCS9VpEPyhr1sRMrDDH35vOmlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7dF7rGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7dF7rGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 253A8C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 05:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784612914;
	bh=VpEhVVIuYLud7Rc1pXeuaUhLHR/5j6tdmKUbOZmpRJY=;
	h=To:Subject:From:Date:From;
	b=S7dF7rGBoVGnNFG+DhUmxJRIH+Fzl1Deos+O+lRrJhecGymRGtFoDPZzzP2TIUua9
	 nPIC9xtJRKO+rwI49rqMtlOmuFsKqX1VJ/sezOYK4I5GS+oC+wmJpjxXDi6XlwrikK
	 FUWD8OXxBorovvR2/WheWrS+Vbx1+tlOv++Sa0ZPx6H9uFZZlpVDfq0bUzE6+PPJXN
	 aUs99IQjfClfQAH7k7hlADzolts8Ghk9HD+/TjJ3q+V2EzTgzqt8VdZsKTaXULugr1
	 TfCrcugzIj3yQ6xw3OvlhxmvNtYckf+QS1J7mMpBxmBIbrttkWITnQo88lCqYL5hWF
	 YKbsvB+nVAx/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB939C44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178461291382.32735.7526901962720138800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c5e4c345f6d9a0281adcb6bec6094115628550c85f4a7f192020956cc1af5f5
Date: Tue, 21 Jul 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784612913
