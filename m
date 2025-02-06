Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FA013D897
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738847154; cv=none; b=mvstIFq28Nt0ukgoAxDAoz9dLJ5kJbIcSC5T9JlYLtjcpqZaaPv9/bjAIHY4W37LkyDAjkXx7iiFiM8i8717fdOflxqU/VJYin9cZ5Q4HGIJY94es8b3jbiNHl1VRZ+a/UcHr3yceU8NbIGIsHnuneKM/b0z4rHO+isVj+ukxlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738847154; c=relaxed/simple;
	bh=XHD47Qifg8mcArx5KUctO4J7BZU3OlyX33f+D1Nbp88=;
	h=To:Subject:From:Message-Id:Date; b=qMEPLWgx7ncJ1AcMiOGE0VrPGF0lGWQIqVqUrJ02yDbyql3LbulkvzU6Fcc5Ro6oUEJkhtMTBs9fhcUB6PWlnLkn6yvrPCNJQG7cIgTKyHJe+4CP+8jh6cr4GdUq95TN7gXnStJ+Gucez4xiTrBLMjvVYgK3a+zluqJ0DuFvW2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqHiDtta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqHiDtta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FD3C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738847153;
	bh=XHD47Qifg8mcArx5KUctO4J7BZU3OlyX33f+D1Nbp88=;
	h=To:Subject:From:Date:From;
	b=ZqHiDttas+UQgLl2k12iqf9G81hjHklahRJI9iq6CrlMjbENhL9lr3LhGEA8Hh4vp
	 dP969mMPVP1/ERH7CaiGjQxQzifwrKGKR4YAfMwexORKsbpD4o8x1s82kU+9hXUOWf
	 yQQl/Rph+ioAyQnnFAd8I2f7h2Uxf8Pl7pQdCZJQNvhMwJsGIeEcV3U9odwriIZej3
	 Mm0TzC6lS+WekQTsg+bpmqoTngSWUYTfHz7VIOilZ4gGiCPQ5oZMjKeDVqPxhuuiDx
	 /Qee6xtvSbfldT3QvfmQ21Kzu2vYc5i7DWxPGqz5dV77s2YawrwmHuDra+WDow2Vzo
	 ORIDz4IbA5yzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA69C0219C
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173884715361.25704.16443343094526551430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b0538de695a5bdeab37a2839884c913598ff42e1d09a13c33238a669697deb
Date: Thu, 06 Feb 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738847153
