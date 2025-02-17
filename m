Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264A4219A67
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 11:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739792334; cv=none; b=sAVv/8dWvStp3ez+8G8JpjMFi4F7lhnslb4xIffDLN/866Rdwv/L/znxSwvkdW3mWbOBAkVnmgqL9t2iqoaYDMVWc3TwuhZOFYPcEr5eLuB23zlig9iD43bhyxfy4j4g3eEj6Uz7glNozbndxDpSANul/yvVQH28P6N565FCuDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739792334; c=relaxed/simple;
	bh=x7MHH+bIN2Pn5TMANFjnDOkWc2eeldXaEroB/IYyU20=;
	h=To:Subject:From:Message-Id:Date; b=ffZMexU2C0Gsx6XUOmZq0PG797QWgQ0TW8hCFjhmYH0SiWbsgASHeTH8foQaGCU/aBSqA/QZoQa0hBl2rDJMIVoWZ5GU5ChOgbln49PgvhP19zdoqWa0eGh0kdhcjYW5n2I3RISEIlmKkIKefYnsbDqua5jqO/Kch1YIlyRyeFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLfhA9J4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLfhA9J4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2C2C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 11:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739792333;
	bh=x7MHH+bIN2Pn5TMANFjnDOkWc2eeldXaEroB/IYyU20=;
	h=To:Subject:From:Date:From;
	b=SLfhA9J4xoS3rSvlTWONJo/lynqowDCkvlZ00pDYBJLqbE5cDUJmlsH7r88HDza1k
	 T9ulEGiVdEo7S5Mot8LZixAUIEu7dpwmPwl7Fq1f0rrxN90fkRIACdI1rhXAXd7w9G
	 LpDJW8YqwIWSDbf/OpQmFE671Y4pSEGZcwdG/vibNHOhX5GKydL1nxkXnILqcM8dLD
	 +QVOr4pUzaDLrgh63RKeD1iyPDtXF/jHqXsdnY9N3qmyupUpdrXvCIuaRf6z6kTQ5k
	 iWA9qpi5b+tAVaPRVuxxBnNBUDKkWGSI2EI/5zZtTxQKf+6VNoyDoSeu8Urxq39AVY
	 YTKMmwqcPBrPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B1AC021A1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 11:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173979233359.6253.13880339779452020929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 608867659ec4a9cfc632f3a1272abbb76097dea19714013a700081151848e40e
Date: Mon, 17 Feb 2025 11:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739792333
