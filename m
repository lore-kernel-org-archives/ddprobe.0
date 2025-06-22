Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8D4BA34
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750592994; cv=none; b=W7Qrd1WyY2Fi75Q+2Tu+wb2J7KZA3Sk/oEhiQzLkAAj8tCa4mWr2dENqwqecvGqme2m5crkxpUiregZW0ouKwiaGbBOa4pUme4J5L+xJdfBCG7Cz0pO470XTUsYKujYPzN66XQSPObqWUOiP+KUw16T4veWsLiZ7yFFQs5AbMZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750592994; c=relaxed/simple;
	bh=p7ORWfOuewgTzyj9/ECWynWeM4e8zCu9CnBhyshD0AY=;
	h=To:Subject:From:Message-Id:Date; b=EvyZOlXci34Bg+SL4/MnPB0QdC9QF84J0SlaRZSDDKbMVAgLDRzcbo3G+YnhcJLUpv3LhIkoVgxqYSXRdvOFsjN59I8CqGM0g9OOu9px6W5Uh6+F4XzGXvl67XnYom9zGkLUBZo73h7ZoFFA4rR+aOqLnON5AydYhuf1oPaHexA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zc/jZmr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zc/jZmr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC18C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750592993;
	bh=p7ORWfOuewgTzyj9/ECWynWeM4e8zCu9CnBhyshD0AY=;
	h=To:Subject:From:Date:From;
	b=Zc/jZmr6EfYeaIBwXozHfwH1z332GvHcjJx3+0C9nU6eSa2i67dhqA9+JmmDxvwY/
	 IDUVnCsl0R7KtvcEJXvvQ3tOuMBYHIcaQo8otLSFpVgt3WncEZYZ0NH50250EystO2
	 TwndFAihw4Yg+8O8r83EfmN83ldJNPUbgmJJTmSfk8y75xrR5glo/UkfRGvvHGUZEK
	 eMiwSBJovnNxruVC8nAI0GgF47wBqx/AuW7kFgjnK8HFuCjmGXMrgUIVenINK0AsE4
	 Ka+CeqWC/0tyS5bCfNZD5KtU5xT5wMTBzsYLmRu+ZlHiEvFRkcNvG8KH8cayG/tven
	 gCK7vtw2DEoew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9075EC7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175059299358.8413.13081803936963329837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11299ac3df6c03cea2f377f6f5f45608ccc55c13bbda359be626245ce8301427
Date: Sun, 22 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750592993
