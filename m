Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D07225760
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 22:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720044923; cv=none; b=fHwT4it45PHOhIvOMKd0RET5n/zvPCne6osPk0KGQ7p8+9IFYfLaEiiD1WArExOUzqIVg8GkEZ+4n3efqfTZMXTfC7g835GLqMBpgn7C0BqMp5DsMOgjHbmMgyXPjLlwcYJm1As9SQwWWaEo0BYFQ/v1Slriz8PBzF3mQd2RZXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720044923; c=relaxed/simple;
	bh=I2GNJlezxc8XL9jOF8WwBha98gkGS3os7bcTKrmS53I=;
	h=To:Subject:From:Message-Id:Date; b=PaV5RqlWIiwcwshupn4npanWHIH3Gz6rRLYtLrFZhAZvMj8FDv1Y3y7o+IbQ/Oo6OS2BMe1zmCIwoEtoFvOX7MMPkqLBuNWhOxS0Ez49PmA5BQpUHrX0dF4TpjrZ5cuptgRZ7tyQCXVbbQtVNoA8zCQtbm6bgmUC+lYk5V/rvlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2BUDvxT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2BUDvxT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B19C4AF07
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 22:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720044922;
	bh=I2GNJlezxc8XL9jOF8WwBha98gkGS3os7bcTKrmS53I=;
	h=To:Subject:From:Date:From;
	b=W2BUDvxTpf8ACKEUd1Ev43pqW1Wes8clG9FdGzo2AJv1KMw2HldIat1HEug+M/p4X
	 0yG1bJOyBT9iwDp62qrFgbZAiU1e5fBW2Qo8awq64WFbUBZdK1qaFGi1DULDcLaeBF
	 hDbR+VPzBVrLSJpP1vG21aM5U3sPKUdjq1BlQURIhaiGxfbM4a3t1SaA61Xc6S7+f5
	 NkYxeStqb1OpJJNjQSLW9b7+E4VZ93o4kY4RKFVQppG7IS8kn7NKPo5ykTr5H8eGTG
	 dKatNg8+A/2t86hPjGCg5ZMOG2xE5zU0ClyKdvltH76//dHDSmxjMtwOpeOADo/scg
	 zjyByG6YFlJvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1313C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 22:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172004492278.25895.12445840804017595735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b56ed03f633e20033ab1671b30607cc280af464834123da9745d80bbbb6b422e
Date: Wed, 03 Jul 2024 22:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720044922
