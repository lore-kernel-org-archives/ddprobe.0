Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45262345CAC
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761326994; cv=none; b=k/C6lmt6P8mOfUdhSrK8Q/Gbo4rJNafzwrJgKuBXzkBRGfm/cPtnvRSLSEmO542F1Dwbwmvfe+FUsRUzJ7x8UrbRh2AKXGLvx9TvN0tk13MmiqpLht5RKFDlhU/TyrQ2QZOMLENu5t43eX3oJEDkOpZyRegFwAtOeGLVAXTDlhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761326994; c=relaxed/simple;
	bh=/M9xLrwAgLxUOSlgxUYfo5RbPzZJEVxJyi+Ifv62NOQ=;
	h=To:Subject:From:Message-Id:Date; b=bXalYhcsfq/BrL9dd0rr7Hp3OEy4hph2ym58pYlqg8ALGyQlTaQG6nN5Ancb4daTJStCg4x2KT4m3fuTTKRiK1olDJGrbWHkwGZqalLeIr1M9heWf+AwPOxgFVenRzvu0W1O/xKRbf2/1ftN3IS5qYe1bheOzPnouuT1jXEXGPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PLl8ZP4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLl8ZP4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3827C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761326993;
	bh=/M9xLrwAgLxUOSlgxUYfo5RbPzZJEVxJyi+Ifv62NOQ=;
	h=To:Subject:From:Date:From;
	b=PLl8ZP4tb4uSa8tZ+ULozkd2ysLwhnE+hmZ67/UiYE7a8pp5Zljqjg+tUvWtjxBfL
	 sPT31m3H9DZoOlxlnz+A9gqZMkDRQtQyDvgpWJIWwDaDdzpkR7eCmhYYcG1RTmSIZw
	 13Rvayqpw6wPnSsh2CjR+8jNd+gi6+ftWJGfEUy2mK5Nngcf3B0miX6rHdCXZWj9iT
	 pzktiSOLIoL1pJqJxvaususufwCOQu7sC0ss4Fl+rC1yKC9wk0LU2XhSqYXJmRYoxg
	 W/iDulfT0wNiFDB6Lo776nu9whg4XEygp/FK4+F0c7B1+rTS0S7oCsnRJjB/Lax+2R
	 32TCcmtlqKBeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FCDCCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176132699359.13151.1117648342858913094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 116b8ec9996bf387b9ee9c08dfbed69ea6ec5dbcc2ef608447dfeb7a8485363e
Date: Fri, 24 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761326993
