Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA22304BB4
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766098434; cv=none; b=YzJ07t9+C6FIAHClprNm9V5aqIxUNI/3zj45bUW51GiDXXMG6wA9bUVPLlsbcxpZmcgAlyWAvy29nv5z4A9AyRZoQOT3XWhKi95+u59bEy2tn8ZUIhYH+xeJdGN3ofxfjE+OB+9ZW4ZZOx0+pBEpyNhoIsSMo70xt+HiNDNfDLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766098434; c=relaxed/simple;
	bh=3kaX22HmYC1T5dZXGh8S7X5nFy2ONppI/3TnZ65CP9w=;
	h=To:Subject:From:Message-Id:Date; b=bByx7Bck6JrDjwhTZNpqQvb2++JLQB6+RXvR0QI99fL78DG35faSDS3pLiWGtdYEUiDeKjEiU10f7w3bP1QkqVv3dfrHaLYw6PwfImaGa/QhOCCoHaiI6Bflb6sPcXhQQ0I/HpJSrh9RZF5wWUVxz9CQGWQbqZDHw4ME2m4HwlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ck7gN4Aq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ck7gN4Aq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4957C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766098433;
	bh=3kaX22HmYC1T5dZXGh8S7X5nFy2ONppI/3TnZ65CP9w=;
	h=To:Subject:From:Date:From;
	b=ck7gN4Aq7CPE7dHE6JIFZXlQ/V14yl1TLxXHRXo56OKMSzZ2d5vFGszylVgCHRWh7
	 EaWX7s4bUI7t3hIyEertLe8UJ2HNRA6PVurdJ69xjQQERg0aGVnZMz6sD7cJ/5BjL4
	 0SDFccVacNtvxpIEis8JC19bWfSCtyQm5BrRmjoJ7UkL7e8tr1/pHf5FSW7K+m0tc1
	 kA0Usxr9eypCRSOH8IxjHNaYshtzkY+DTyTpAhHiDWwS8cZe+MYX41np0lW4ewTcRo
	 eV+4msGzttWhO/toZTqdE/BPSJcCeZU0T6LesCEEZQSiO2Lp066d5yqjGtOdvCAExi
	 TESHC2u4Rufqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F84D711CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176609843359.1947.13495240069576777709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d330069572ae0a67d51a7fc59174d4533458d988b5fb548c5e9416ca14f8b469
Date: Thu, 18 Dec 2025 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766098433
