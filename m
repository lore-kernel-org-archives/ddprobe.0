Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EEFC2C0F84
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774242894; cv=none; b=hGU85jO470iVTIuVA6b8rXbTSnWWQOeam6ZVoykRkG8d8Aacx1k9pTa1bB4KOm/BKJXdisHTrN3C3nI/F325d3rV8+eLHssCjwruhYEG/xoL9s09af0qDyXOPgrgUpYOjy/B+BEx24/AjvkQoyfK5xQYjszFhLwyD3yuNkpqyNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774242894; c=relaxed/simple;
	bh=WVo7f092u/jME3WAaSrJcI2eKwbam1GW+LbmhdSq8uQ=;
	h=To:Subject:From:Message-Id:Date; b=QSF7QTAbbosyAb+5xvTlMJ2dMEoe9qGWb2DgtiNjTu3tjXvPKVnWlY0tvep5g5DdQSV78efF7mfYFgXslXJWvWkmZ3/IK8jEWkquIkmSW0IM0GppCf/JG8v79MLzT16tJ5J9PQzf9lh56ZrjOIMetGwr0qEf+brBpF6cz9fuC2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbXH1mfl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gbXH1mfl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44DAC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774242893;
	bh=WVo7f092u/jME3WAaSrJcI2eKwbam1GW+LbmhdSq8uQ=;
	h=To:Subject:From:Date:From;
	b=gbXH1mflftoBanMNO0LyJc2aZSD8Nn6BJzq+d/UJdpGT/Z2WHPTZ0X7+hLdlCRrLP
	 CHe6RANw8xTBlut+8soSTQzEYj+63GKSosq83EozGQPyIFA1diO8fDH7wT62z8zX3x
	 /6Jv2Aphw2UcyEpSgL/OkFMWnzEwpvnOO3v7QhyqlL+ptv0+8nAGUk1RGcJj3p1P8x
	 FZYLHJQvvtwyWd1Wujhmy+Bfnw7WIEw7+Ujg4yNAO4wSqgJkHrwK8TXgl+MW+WfwmT
	 9lnLteXABTOBCsCDTv2poXO3a6N3Rfjxk0qQMg6x3W0yFVeJ6PMmYBOoBDEKpZfsYD
	 MKrMbDGGp4HpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E7AD58CD1
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177424289366.23096.9865787072408771970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f51b80ee6747fe13ef506730dc7f552ba640fd8606f324342ae0c8c2e07d7a1e
Date: Mon, 23 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774242893
