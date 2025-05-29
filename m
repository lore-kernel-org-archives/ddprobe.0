Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FCF28E575
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748516394; cv=none; b=m6rCiL8Iiyd0lAs6MX1hKdcfWOozlojp8if7kfS/0kbEDGmzRne0Wjwa5pIlk+reMAqHU5F/slCNXilqfjywd3t+znFVN4iQ5rDxG8JhcgxqZypnjIEyvUOEE59njEmtn0jnEQER0OyNlDGvGSjUn5AjWo6p9f7jCiBpG3BrW7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748516394; c=relaxed/simple;
	bh=v8ZfjujGNkEHBN2j32tmCZLqfJ3Y9OPsdALDnI+ATB4=;
	h=To:Subject:From:Message-Id:Date; b=Rv/map6v3ny4obSPQSqTYiDK27cKTAmt3AROoniVO3IDfNY6+2Fct86pb3R74UXB2acBQHczlOA4fR9rUWLnY4mv3gEZoeYOJX9GP4wXq0lTm1G8Q0oE/u798+VPgQ4x/w2/a0g7nPTIn+KZePgfqajWMmOvBn/rY+aRe/8U4Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LsqI8uZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LsqI8uZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B18EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748516393;
	bh=v8ZfjujGNkEHBN2j32tmCZLqfJ3Y9OPsdALDnI+ATB4=;
	h=To:Subject:From:Date:From;
	b=LsqI8uZJeL8kc7Vv4NrfjLglNHh2hYsWWiVzjYJr2qWoNkC4nykY07VwohKkt1JkB
	 /TxaAept6NKXEYTgE8S56O34xKsW31rxj3fzFPw+TdWAbH/oOKvRph5X1rxIriulsK
	 fItGaqsUcDU5sVs0rCBUaNflTVhy3R1rSfHlR8fsPwrVlNogDK093XiE9zFYCcTnP0
	 Ko2wMMijVMCFFUi0ntcubPfPpbwJFXy9jt0nKs8zZMGt/MSsDCTyyB9NVv50x39r1V
	 G1LySPhUS81CxeLMyuh4KjTMCupucu1fHqPxRi1sXub4Ac+eA3c7CUEEqVH6I9ZrzH
	 3y3F8G05yLD2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEB0C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174851639357.27136.17154839637437124591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e79dfc979375a0f85f1b9b5a8a6029332b6bb441ce3cd953d99d1babab9256
Date: Thu, 29 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748516393
