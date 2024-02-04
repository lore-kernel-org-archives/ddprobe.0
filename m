Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013D9219F3
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707046097; cv=none; b=A6MLo2EepJa25zpCldvW5c3Y1AD0sGiVnhb0w6DFR5vBAoC9/NWP6jWw1NREuUSMqwb17gDvHeR8LKWFR6Y34nedQSKKjL02OEDZqCH7hGGpO2vHSttMhYd5jshv7Anob8ApJWdNOf8zWR0jIfTBflqBrP+Z54RdLDkXqqV6YWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707046097; c=relaxed/simple;
	bh=ciogFrGWfigGY7MdMBFyOeZQpvSkmg2pcqJnvhR7emU=;
	h=To:Subject:From:Message-Id:Date; b=MKDPtEJVsX0MVZWrCZ9s9l9wlSK8ikBEllWvspq9fY3xlrUVob5F3YZRxrrEghXl92k4ZE38CTKPwOD78M9Py9hSm0RA3mM7XGJc2IlADjXOqVZ6bZzh7+rpFDzHi5n2IMQK4U+vlj7//lldwSrZ0bRYxk2pBp4IUl7zpsZRGtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIjhyLcf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIjhyLcf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B7ADC433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707046096;
	bh=ciogFrGWfigGY7MdMBFyOeZQpvSkmg2pcqJnvhR7emU=;
	h=To:Subject:From:Date:From;
	b=PIjhyLcfGWwgdRaBBZIJS8rN9CLPFDm4Z1aSwnYh07p9R7P2VQyPh9hzV4uj5tcT2
	 27TDsYaqLGXVYUlcoh2/KAtwFZVHhS/TSWzwL3bk0F7T1vwFfotUK1dw1t/oYR9Rqd
	 BQNkfEJ6VtEj4bLovwjlOK14qGPL06vKUVC7X5jxftlqJfW9jYSeZCVSRkuYnOBohm
	 WMaN8ONXdlRkdoYJfgrei2hwr2ULbCwqt6kZb670Iy4NOfp6+VXQCqw0dXgDK/o4TU
	 bqOtu/jN8yCvtDNzZIHZwC+Q630KCvx4gkCc96c1neXTKeIhU/7WiUEgYW903gT2RU
	 MCoWEAXVMZWfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FD4BC4828F
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170704609642.18534.16325007858180243485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7caaf735f423464850b49950e0e073fb715a6078dac7c7f033dd2522203d8856
Date: Sun, 04 Feb 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707046096
