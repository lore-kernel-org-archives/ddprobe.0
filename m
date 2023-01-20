Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFCB1194
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C6F1C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674190287;
	bh=u083LesnmfwVezoBIIgU6T0AogBhjTD3p9Vw5JVcWaU=;
	h=To:Subject:From:Date:From;
	b=YFQyu80/HkCEfLaEJrN/Q89U4+6OYeUs3Gah8IsIe77qPsCZ05zSzMqc5JW42P2w+
	 m5JqTwqY86vdTsdQr2kGqY6uRNzPgc9K06oMLai2lv3nq0uIJZvVfbOO1EPKOs5wrE
	 cxQjynBi7v8kEo9TdN7qJD40C9NxML6eiE6HReTUPFspiWNbRVMP09noOm/mvCRa92
	 vLfw7cGKR/jwOxbkVIIy4rqvhhpkOgjZFHKs2L/huUqlxtmtH5JGiKWc+4ep8eVh/o
	 KAXij3+kkg4A7eXVlrp++w0818SCoWipH9Mx67q6L6VgzbqrFdvzGMnyb+AHSTeRS1
	 ISbCCtdP3ykyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F4E0C678D6
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167419028738.18765.14860350026184779036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53cbf7115530faaa048aa32c230a71e284b03f6ef9fb1dfbc6d64cd21e835734
Date: Fri, 20 Jan 2023 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674190287
