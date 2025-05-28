Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE062CCC0
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748418594; cv=none; b=SzOgAO9Vom9j4m4mz/gXr5Fsrpg6aeRqS8okzJiBY4DLnCuYIUSlVspiqd/bkc8edZeEJsDFg1Aqfecm5LTBo1SGpATdmCsb4BQ6cc9ghF7QOWHs2ZnYF+iv/jxQncdyN625q9XhzB6pzfZQ7lv0PUrQpt2IaQ9Sn7JJWkla/Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748418594; c=relaxed/simple;
	bh=4alyD27lgMNAAJ6ldFq0WOD7ylMF+v4rDT0xDa/PPmI=;
	h=To:Subject:From:Message-Id:Date; b=GDyYHpunlk1IirG/InGMWackNJlo8OeZJvXpBmhSex40vFRWtaX2a32htz0ZjJ/keHXTlR/ATOdylCjIjyuUEdc5EjZuUADacaUS9cDPkyzPbQcGMGLwrmnSxv3BXE5Sl1goHk/mvcYO3htbDAy/cIMJb+uxqfKXWbHd1dwmrpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbOtat5G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbOtat5G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2008C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748418593;
	bh=4alyD27lgMNAAJ6ldFq0WOD7ylMF+v4rDT0xDa/PPmI=;
	h=To:Subject:From:Date:From;
	b=sbOtat5GwrnBS6q/riKYSDBX+oluYKb8bK/IqUDSbfP/gkeoqKFUQvKxBmzitJ8e/
	 BRC//lcUDoQutc1TrqyfcAyWYQvXdjAryYsJBwSFom0WSgRQwOTFGpTH1Sjk20I1aE
	 4aIUaNL74uILZAJqRn/7QpsJ9HYJsUF55YSTj7wbU/vQ0kbIxaXx39GVBj0iwRXh0N
	 X9Q287E79ryh4jISB7d4zlHhq04NQifOQMGepDeHsofvX24YGsZ31jsezFSEPSE7kh
	 O4osObFon/5+TYrij88j9FetXgCgZJGJfaKDfIm2jts/wJu4vB0tVj4LqrWS7uOGWq
	 P3CXKYJlrOdgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5E4C5AE59
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174841859357.6910.14558060900346077191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a723b428b586526d00c688591226ff6264f3308e36045a085001d333d69edad
Date: Wed, 28 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748418593
