Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F209A3BB57
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773361494; cv=none; b=P8Xa7TCH+Ck3OPD991b2F4kHwPujXlkZLVsKrywZ0LL9R9FBn9H9U1CTVzrxI3wGZcSBrdD4D89knwsTcWSWMMcUA/GCmQKYGniHvXu7QnmM7tibUiiHdlg0w4Y2HwMFkumudiRcjuYK6PtTTxNuJLyIs7X4SDoT8RRnPNrT57c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773361494; c=relaxed/simple;
	bh=4gEgnJPUnXsAXlzYKg1g6ezml89n8O1MP95Lnl39q6k=;
	h=To:Subject:From:Message-Id:Date; b=ro0R2iBQMmO47fz0THOJHcHpZPQ3rqPIlwj0qJJuRT7+xwmTPHxczbS/GbzG9HCDywcymI1BYDyFF5/FtRyqj8OkZsxraXZKaYXG9BBDmJbit3QpKf8tjIJ+D/RC6pCnC5lKlTP5vQ/AuNV7EtMf0Pxe9pfPFzPmOX/u+9BSddg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PG+uronu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PG+uronu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE17C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773361493;
	bh=4gEgnJPUnXsAXlzYKg1g6ezml89n8O1MP95Lnl39q6k=;
	h=To:Subject:From:Date:From;
	b=PG+uronuwuux9URrolm8Dj6ee/8LcMySc8dzOFO05Ly1TX0IUY7WJ5X9M5jLPnowr
	 RQGHS4OLpXBMsn67twTqg6q5udT9e/1ux93mX5EkI7i/UocI7LozGD+AuBUo8Eji7V
	 v0W1Rc3l3uGhqtWn9Ki8IlqghhjPeOl92dFLQS8W8SWqJIbOZ2uhlcYTyKkUR1zc1H
	 1MBSJRpqQh1qs+fDbHtW5J3Guuy6W3Rd1tEvGhNcNEbpQjcgVKXsznF0bTfV7zLdSV
	 Ro+XssIeTcNYMBs/XlLyJ9sFJIXudxWYQG+iOlnGxAjaNVnVqnP3vFDzgC+Q8N6MwE
	 9lHf4SZTtIUew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB5105A586
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177336149358.30242.1968374531567269482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b17705d8af4e43a854e453eac2586b9522305e57849bba5a42cae896dccd15e
Date: Fri, 13 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773361493
