Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406DF21CA13
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777043854; cv=none; b=B4ZFa6xYtr9pn6xxUxB7R+FaTql1iwii0qn8YxK7wWgOlmrXW9Ix+KRRGu6V+KKSp27F5o6ZGVqdMOs9kaLTA4lzVtf45zyvR7VzGHvliJ2SJqtIsDsiNQUToeV41u1cV4tU+F7V67GrtPLiBzj+0fTp08LLYeIAlnJ/LXjJ2q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777043854; c=relaxed/simple;
	bh=vIJke0tsiad7U7a3x2NUjJ86EEFxEOqV6pHB6+O/lD4=;
	h=To:Subject:From:Message-Id:Date; b=UNKt794YH2kmQTHJSsNqpZuF/HweAhK+hdpqBrq7DfOHU7kLb5kp6d8sHLQR7qiTAUcw0LEQJZmGjEmpeFKBOohw0ZfS1OI/Et1bgbO82j9YAT9QPbhVhU0jlLoKmK5Q6y8mES/KdcVPehFM3Wpocb38Y7qVM8e8Jxrm7fwAJxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXhi5fYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXhi5fYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB207C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777043853;
	bh=vIJke0tsiad7U7a3x2NUjJ86EEFxEOqV6pHB6+O/lD4=;
	h=To:Subject:From:Date:From;
	b=IXhi5fYnD2dNSb+qnTRrFxVuEbxVS0BELRIVVVplFL6gFyn4q7EH24i2gJM9rj9wk
	 jrpYbFRPU2OI25JdmuM4cN8PkTJDjYyFBSO0UYF0eM06Uzogk6I4GGRQcNrrSv5IRv
	 5nJ0bVMPvHtTp8X3mjJ8Cu2Z2MBK2MoTputIwIYBRxbfHUZ4llo/i4wkkTto2WSx/d
	 s4SQhBD6ALpjcFFABcS7E6vuLrroyYNAFkRmomuW+F3T0qsDK0iCzj3zIzC0Uum3cP
	 X0wWr+YhDHXFfEwo2C1WewoxpN9k97CzqFm2weBBYEc7kpSLkSGi/hDLmeuCnszHBr
	 EOJOSUc9fri4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA4BFED3E2
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177704385369.17398.6279595877325130059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb0e98ca056be0e3ca763eea64274b0b3071cd794bb2249419178497dcfb092f
Date: Fri, 24 Apr 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777043853
