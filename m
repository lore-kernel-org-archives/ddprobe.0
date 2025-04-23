Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE1B182
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745413194; cv=none; b=REHD7O7iDJ91+LAe/PXVhsypkFQTdttX7ZncGCKKuPNQ8+jH2Db7uQZ5QsmmLTfr3ojsvsEwarQ+tWgjuBbNEiEwsvBJj/ccexQ1vGfpHAz9OIR6fGo6F2Bn8QfgKCf0TJCOntInXqtx5R/JakfQvZzUZ6aDw+lR2AIndY3jdJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745413194; c=relaxed/simple;
	bh=qKfXYP/pIqj+avwm9u+yU6WZtsQIeZ1pulDt+R3M8F4=;
	h=To:Subject:From:Message-Id:Date; b=BOhWIBkOCq6CWfdOGKSmw7entJ1cxuAUOzxg5Spl95IzVA8uHRFkIGcIqnrLPuPg+zgH1/fl+643ykUI0QLgZN5HsCjGI9NLzbA99aQYTwQSZr4DS8ucBuUrjVm7T+O1v/SIHi3k7Q9ePwPY2/V9uuN7UhjmfIySdDimgz/bm9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYNSPQw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYNSPQw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C63C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745413193;
	bh=qKfXYP/pIqj+avwm9u+yU6WZtsQIeZ1pulDt+R3M8F4=;
	h=To:Subject:From:Date:From;
	b=FYNSPQw+dYOjhd3/mln7gvRAJF0b1I0UVOCw4dDlcySOReDDG93hTuc6+EzZbjRr0
	 33WeAtsUWyLEhMhGhE0fOx9ZjGboWUTNlMo1TJI3ELkv/rbsZhEEiadajLG3uS7fhH
	 nBu7B9z45ZSJXglspxYqZZSZR+pg4hvbqaR5uof0HgQjH7q94hhUupvLxQ9LyDl5UY
	 0VQs5Wzl23kcCiMUlzOXJHgIkvNbpUX573eNI8XjANhLNnhRcOYqqr7S/nPWRp8YY0
	 eSG8FceUWpxt66Kqw7mku/nEqSDv6Hq/aFdn7W82aOdpkObMHMj5KLtdGbYgkqt7qG
	 QHYSKHCe3Y6gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F936C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174541319357.8137.2004556656378707773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 478cbdb24932c19ade117125398fe505face2b4d821faef3d4ea65cf5dc22221
Date: Wed, 23 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745413193
