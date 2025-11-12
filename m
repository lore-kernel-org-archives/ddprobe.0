Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67CB2F3C32
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762938593; cv=none; b=X5LzcMaWRA2YalhW5Rcelcwyw54gfrxlMcTLcxi92U0G8QBqZ5LJ9rSexkfcmkPgk2bKZFRB79+fkJY4yJSnKAZRipF0dWSSkNigGqkgObhSl4Q4eq0ZvPPJYa3EcZMUdKnFXP6uaB6Iil9PN12etxeAWvy/+CaGrUBpmNjGt6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762938593; c=relaxed/simple;
	bh=j9DghAWyQlLjhz2kUyeOPkExwrZluaaAjLPNdFgo4B4=;
	h=To:Subject:From:Message-Id:Date; b=h+GCi+Vu2ZIKQPypHKwB4fYD4SZzFU4Xeib2u3yAIWTa9ZlIqwOOGjjNjwyhei15B+mPFZ927h3MycR3rvVG472Ui+3CJaEDY4KGyWQEk7cIARXg/S80sKad7ECgBAhgFllXa0iLR1yvQyXyHhV+cPW49Pbd7YLosXd45JQcr8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCdvYXqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCdvYXqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BAACC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762938593;
	bh=j9DghAWyQlLjhz2kUyeOPkExwrZluaaAjLPNdFgo4B4=;
	h=To:Subject:From:Date:From;
	b=nCdvYXqHJqLhG+vAWJaH+LuwOHxeP2gBRFk2qtiaV1lHB8pMJSHEcqeGElL08nRVq
	 anHOATs+FUyUO3IrlcclfgzvNVykOY0SGXLW1ZneidPdPom1eP0HKImcK2O/fUnR1x
	 u0KH35fWO051/k8m4962769hr0DeB1IlMrYgvrbsT80/3bxfj4RMma6gLuXuFwQLun
	 QJC0czx/2GtS/q9lzMwzImgq+Nmr2Woja26MAuK6l3g+nhBqNm08YzGQiCrJkyrYQk
	 adRzB0hTVrJC3mcvH7rcf/D3gma3Ool+1JfawUXWAYsmjnbFIORl1YHYX/6o2nsOBQ
	 HXWvBeJb+l4mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDFECCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176293859358.25544.12387302279835365263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84824d7b161a07f6a54b02fb6291ffbb5567d2ed32eb3f96561e951311798085
Date: Wed, 12 Nov 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762938593
