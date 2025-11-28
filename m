Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2A4770FE
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764364374; cv=none; b=JstyUBNMyT9tn99BG/y22tb/QRdh6W5QRK4b6Dzal9XU0O+oaNsbLKa2XV6uRRnlI45MQFx6YA6SFmLgn/s8vsqA+9tQMXCFjjH8Zz8ZHk8aFoJYOcVdVquVkrKKeh7cfY4tHE2dUmTgywikrx/RU9YAslyqBq6gF3d+vH2mcp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764364374; c=relaxed/simple;
	bh=y1Ggk2BEDo3RnN5sOwA7EVnOXxi3tbFOx6fsWAH0Q3Y=;
	h=To:Subject:From:Message-Id:Date; b=jeP/B0T/dH1rXjAeIjceta3R8Omg4nTNSLZnt2ni1TrzmNpPIQHOZyuEBAHkljRRa5SGPyPbH5gPb75HHobKbQw9/ZmgxA3Wx1LDjhhdXN4y6kkQH498hgYmRN9OeaL8rjoYvSdrw0Ll2zRmTNLZOJ/SRzihY2tqM0StuJncK8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7+gyd7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7+gyd7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD571C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764364373;
	bh=y1Ggk2BEDo3RnN5sOwA7EVnOXxi3tbFOx6fsWAH0Q3Y=;
	h=To:Subject:From:Date:From;
	b=b7+gyd7gb5jxd2/uhIbl7merEKRQVAEu7hnjUj1mxB1Dmq810y4j0nqVzOnI409N4
	 fWkDfNN5TEOet/1qDbQcToh5bTGIO0lz29PLmeYSufaHzBXg6CaA+ZhMsMM7e5OBvl
	 jiCFHIpGg4wOA8NVO2MTRV0uClyGBzQPHhwGzJwz6QHWfYQoEnocODWVtGfu4e4Nrh
	 PAyNENt2y8bPPxT0M+upm/Vl1JvlyI7OJQnRcTfnleceYE7i9j3l8Vtzd0SYydJQiF
	 81V/0wrEq+Df8WCVn74rITZKckvE/DN2eSJmG51RYJEzCtvtEzzk5GyyqMjTOVRrRV
	 QaHO2sozBhxhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F27D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 21:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176436437358.12641.13881647457790251187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db429a4437a847457d83e8816a5c590ef1171a302bf1f1caba05eee59816aea
Date: Fri, 28 Nov 2025 21:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764364373
