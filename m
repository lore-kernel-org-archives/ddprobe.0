Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B45220B7EA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749718794; cv=none; b=KM701iySBJ9Y1xuol4FA6a6Pgi9Izr7OWEFcHdOHSzS3JCrcLrN92yW5nQGZ193qgdlobsXYVdoVhBSVkbgLTnYi85yPnm/YuiL5sIy9V0uKGVTEyhxCKad14B3tdzb4QuwO/aTyL76g4mowsdMpvYXzQRIW4vhJmuG6uUl+m4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749718794; c=relaxed/simple;
	bh=+JeEUbIGPe4Yt8fqE0TTdEBSY5CkN6yypfRkiEayyC0=;
	h=To:Subject:From:Message-Id:Date; b=MKZHXWNnASE9deVY094SCHYkGthwV0ivVn2v5ThiY8TVJTIkw6JiQAHneXiBf/CJTrWpvCCIjhnLtRPBRxw9fU2Mn7yxx4hsRMWHxCeBoJ4qCWHVXflnw2oYshuz2j07zAE6Ai7VlmrPp86TQlQFnv/EAkBM0tVgWrBCsVTbiTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ME0EQoUX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ME0EQoUX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2796C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749718793;
	bh=+JeEUbIGPe4Yt8fqE0TTdEBSY5CkN6yypfRkiEayyC0=;
	h=To:Subject:From:Date:From;
	b=ME0EQoUXoZWK9V9flTpo6vf+i+yFo/Au+O0qsnTt/YLXhYu2uNbRqqVEoL18bXT7X
	 CqEN9cxhgb/J0X8q/MTFuDriTTdbchC7eWnfocFRkWxpiIVHeNpScw7c8d/TTh5hnU
	 KIZh4H3Crh96E9Us6oZthhIHfWfXvYhDqnNXsQiCEAWPXjeMtE5WWAoQlSSk0XPqJy
	 F1kYfODU5ARyBKNEs98/mxsEFonjqgsmS5Ddu2G5vsXkAPmvXEgaWqfCTr5bOSbfDK
	 xaJ1CX8y+z0TPUakefVTX/0FU8OfofOGQ90qFhYv2OVduzLBPKtYlFZ0U4T70syP8c
	 T9wiiEEVxlPyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EED6C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174971879357.30876.8468499635669172038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48541146cdec13710c8c6925aafd6971abad2f54b512920ce8a0494213d79f9a
Date: Thu, 12 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749718793
