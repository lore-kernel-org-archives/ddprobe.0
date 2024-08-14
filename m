Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F23829CFB
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723620954; cv=none; b=a7w2i/sxmLdefvaDjNSoyuevSaBcCYJjdmZ9xAc9cdeKjFBO0h8reuia14JrARAnPqUaUotFdg6sobU4SmZMHGVI9Ddjwqr02gDv/CBFfLHCnw3tQKJMLfZsU0/h2ETEVuGQmgihuX2pHmNHEI2jEU7AKXwZ41ddbfTnCFAZYH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723620954; c=relaxed/simple;
	bh=XxZIIdFVhIFZnb/UEggEZnVkYJzHprMEGmBRtnR3uLY=;
	h=To:Subject:From:Message-Id:Date; b=Ug2sv3uKWO+/pUzlFvoRzPYHgr5QpgPq5c1yiE+RWzQbKD8cUzCGQjGHoe0qSnlypw2oPGGtElQ31nzJXZUEY8OjIrBh6o41w3E+nuDRa/1SMkG93+nMCxJpTe5dJPb6HcDqfsqhAzOEKzXt9NVVjw5OqFlRby9H9zbToxzF6LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXsraa0t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXsraa0t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1B8C32786
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723620953;
	bh=XxZIIdFVhIFZnb/UEggEZnVkYJzHprMEGmBRtnR3uLY=;
	h=To:Subject:From:Date:From;
	b=cXsraa0tBAOkboXb0ZTz0WybP6klC3UGCp8bh31YBGMbN1LQ61rxD8zh75rcp1sdd
	 TZu5jHPgA6be/u8brwlv/NnhZfqPLAIh0w2DDbiAVNVxuGJ+HmGtTotIhwSIdv110U
	 vM3kv0PBJybhOk403wT+89pCeNNN7YeZDSpbPhbCy69BIM1LgXM+pnwOK3e7eFuiMu
	 mvpL+bNuvCIEQABRjBb/WWJW7GYYj86dgcqrgIghtKkRWLtzLELELJitkDCZzsrNFJ
	 zeqD3aGJFk5nuXkW4PbTD7F6bWbEXxay5Ez5T6jVxK2jqXM/I2eoDHqj0knSiIq9hT
	 5XO/B9kUOYKsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E0EC3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172362095359.24849.11582176763439710276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be469b94eec75ce564bba57f66bab83dfbb5950eb293d5569212c8b41bac18a9
Date: Wed, 14 Aug 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723620953
