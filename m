Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFDD214801
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745485794; cv=none; b=NRIHMLvfkq6V2dOyV+57eEiY+G0gh84cHSwaMjrSIWDBNX2iHWSeHW4HPn28RuQywHZeaS6sJMyOnS4CzFf5XVVEb/LLFrta5qEchQs8UGOwMcvPRskzktTe+r3L2lHqK7mr29fai/t0XPxuLbhKHT+SuXAgSIWJO9OoD+vhK5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745485794; c=relaxed/simple;
	bh=4cPF1rVvVewxc/N85d9ePce33BThFQe04TA5GclFagg=;
	h=To:Subject:From:Message-Id:Date; b=Gchtviif/fIymohU8cO1xRlKPk1pVEfMXhZzrslJTcV2HXLrZ43SCgUgrvQnXDiAJjtSxCg2bn4ZnvxJcpf5uUvLbLIJqtoVSnTID1NRr2NPyIgQNJTMi18//3iHnofYgzLvttnTbCcRz/YrOoEh0YAjcRrGLAkNPxORYJk2Quk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLlUnFMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLlUnFMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1327C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745485793;
	bh=4cPF1rVvVewxc/N85d9ePce33BThFQe04TA5GclFagg=;
	h=To:Subject:From:Date:From;
	b=QLlUnFMQx93zf5R5EAGaMAfG9EsnZyeLmZwgC0kr5xpXAYPr1w3c1yIYXTP5WeRjF
	 RaJEef/IO3RoCt8ktYwGkToAbezH0LCIhlw9wusx90g5DzPt5eEggZPQofwtQV9VJR
	 Y+zTSa2TlwZaXVOwntToe3Ip3iwCoSBOMip8M0Q7JQRMLfRfF2L2QEoj5Rpxw1bXmr
	 mL7nOG/tO7E82j0QwPqmw3d1Pic2wLkSRY9AiQ2lMVxY8P8t+aShzU6gc3wmyMjTJQ
	 jOjxOVFYFW2JRej5kfxPFFczvu6g9mPbAGBJwz6CeH5NwGYgPD0IXIZGBNS3EWMXXt
	 bs2Ag/Xpjb3Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6CFC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174548579357.21474.15369725801852265436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e613020c42f30ec7a00e22282cf86b67419e6cfd57bf8a71349efadfd780bc
Date: Thu, 24 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745485793
