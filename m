Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01B03EAFD
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnktNDsL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ED9BC433C8
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697917096;
	bh=ch1kqXUd4ZUWeGcZuQXzuqZ4OEDkQFFymncRBR1uvtg=;
	h=To:Subject:From:Date:From;
	b=hnktNDsLKAPM4qWBYbPpqs3XSQ9ppO47GOZhln1W3PffkyiTRARrW1cNczw0yIw7b
	 6Ifz9b+8FUBra6ErcaCCFplIaB1XAvSSiyIc+Q1utFE6MYZh+Ws0vHnFG3o1Jx8jce
	 OZz4WN1Y0w8qvQcxLWAdlazFvEZgbA5mqc3avKgZt/kcusF5X9CyTNkFhBah3qLwgv
	 FrK18f0OioxBlj0kqwBB7Sy7tm7EURG24Cu2IPNBSui4CqWV0Y0i9b+Yin7F6UQm03
	 OJ54KpIynmxeUe5oNXk+3QQbsXRvm7i/mgd0FoJv11AdGf+79N+aM/9LbN/2vyt7uG
	 AHlf2re8iOTDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65864C001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169791709639.15017.8547562968400790987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 335784f48feacbca6ee82039a1bd5b7581d00ed2ae48f9476b0338afe487c1d2
Date: Sat, 21 Oct 2023 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697917096
