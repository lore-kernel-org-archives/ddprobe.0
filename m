Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B17D83537F8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789968034; cv=none; b=psw0t8xJK/Otgr7JAVXuC+pIICuFSd38ePQictvjdhEAmCtkXydCNgzWjyZXoZvWfmxbMhw6LH9Uq2mZWIlSNQ3QwqZ3gYl3MV1O7mQYHHELD9TivGVSWvPzCx0uOPNosmrPChsQHxTSe66Qou4IOFHFSMi6ioeHG3TUzfjbAtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789968034; c=relaxed/simple;
	bh=XGB7h7qFm+BNBxuy+ExL5d1Qo+/etVntsSDUJD7AXmQ=;
	h=To:Subject:From:Message-Id:Date; b=ZrJC64V3wRxbWGROLaGKmLUnmZ2j01FZzHjy7V6iIL+CLW9VBwQwTOZqicgRyAk39vIUhknc0q2nvke1oo2zyV1dUCww875A74tknVo3CW8pPEipmjc/9rUTrVBnO4acsdhWK4/s90OHBR1kDq9R0Um76uqIOaHvbqqxGSY6mMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lt/uyNq3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lt/uyNq3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6598FC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 05:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789968034;
	bh=XGB7h7qFm+BNBxuy+ExL5d1Qo+/etVntsSDUJD7AXmQ=;
	h=To:Subject:From:Date:From;
	b=lt/uyNq33hmR3GjFFYG3lb554HzWmUac04Ugh0E2/O8/8qvgUMCWrdnUlrxphzDZY
	 MiYRZ3nFp0JcHg2AeeObdylY6wWVvZg9JFlOFPTFVT0LBbpE1RSnxLQZATOFHCb3NO
	 5rKz0AQV19JH4dTfZ9+wWGfcPHXN5kiqrMkwwZ40GFThj8JoiM4UaBMgvZn5O8AkRg
	 8d3XtJfPzSOAoi/SP2SZhWa1GN22BQs/ZV/DVEpoPaSYIZjvVX3biysPo3Vnv1QjnA
	 8zrRM0nP9oRiKsuDN287o/06xuEh4xz4WQDXlGdcbByledTqJx7IXG1IfwfK+8pKN0
	 i4GOQ2cXtbieA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F95FC982DA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 05:20:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178996803394.3128.16490967928652381759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f3598366702c1763abbc4c715968800913bbfcb172e530c5981b6039ec32336
Date: Mon, 21 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789968033
