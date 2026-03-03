Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5D8D342CA2
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772543094; cv=none; b=BjBQBqoFzvPHSvOifIrF5YPzp9OjcxqfbRckuKjiXl9dduILPKJ8grPY/4yDIReJm6ir7A2Ry+eVjTnpQNgpPPEyEAblIh9zV8SkgIjTC98c8/Z0CMvo6ezDaKCYflIz4oJ9GPYqdyl5E4lIEdY+edoSEJ050GWtpk0CF6fRWpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772543094; c=relaxed/simple;
	bh=+9iE/74SUnxmlNAIMWFXhurYZlJHlu6ta9XPvjgENoU=;
	h=To:Subject:From:Message-Id:Date; b=nah5deacIoGSQGB9eCzzaKnyLEwnZKskNzkdY1kEkSt+aLfc061c3gU/CqcdMkWKkEb+Lr/8cZBuDU8M6xnewG5Pkd/pSohHiDgG8WnNXEVGUdwYS9Lck+CAMlFRisPAnoo4tNmdKkuPNDRwAf5X5Bl/Fcn6L/6ULqZKZWuwsEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKHyoYS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKHyoYS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48A7C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772543093;
	bh=+9iE/74SUnxmlNAIMWFXhurYZlJHlu6ta9XPvjgENoU=;
	h=To:Subject:From:Date:From;
	b=fKHyoYS5yfiCmHbGNqJhy/UwpUAKk9rjgrCZnrHtzgZXIw8PbX/hWHVLDOmwQsKUT
	 5kwZkp7zTkW6pTRfFAh1Da9vbr8vPaip0sA+NT9Lq/xbQqPdbN4WNUsqwYIvNNQ69S
	 0qpzmZKZCFl6kIDXuAfJKPGGitDOBuSre/HiRZTezeQRAZzHylhjDAUgGAZme2nGJv
	 Wf6R0na6+VVXvi/2UmeBnwOEDFDjL3UEDBWpw6wNJW8QyMlqvF/WqaU3hu6T/ECOF/
	 Ie5Ypo0mJA/IAXMnsQY0sk4++QbmaklWyyz9J9kRPNlvO8Hoy+WCYcnFno6/OnaR9j
	 HE+ghQhHOOJDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9293CEC1430
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177254309359.10013.7005383097006909108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 913327c4795ca6b841544943ee7bfd3b41fb71865bf7715ba91d37714b398ec5
Date: Tue, 03 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772543093
