Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFBF1405AB0
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774541094; cv=none; b=NDqBqCtqH03cfIM88bO2E6T/LfXLa1eaX8jZDAivD79Srj7zaet+AeK9P/5aYgHsKeorbYTRcc9pI7MVOtB9rXM4xkxE+MTK9ysjq4iYQZ0XvknY0+bL8VKli/1hYgA7tSQrcoQJsTwbXacuA5ZVcUTWN8QihvHtSJniTEltcmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774541094; c=relaxed/simple;
	bh=O+KA+CSUmQ8MERjB92DuTWZqBiJpZZ1QS7Kao3TgIRQ=;
	h=To:Subject:From:Message-Id:Date; b=P7u+BoSZBgICNktw9rJsKSSofUesggPxxwuVc1d84Tbpm9xCOgX4dERqVkOGT2pCjl04ugGP8SN8K5UFp9hLELgKA5AwAjBHgRdIuibFyEsUkopNAC7WYatN2wFJHmm2RE79tRnjjFqd9vNvcJ0VFPNm3cRfElY8NE7EsMWJ3NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jja+4kaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jja+4kaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2282C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774541093;
	bh=O+KA+CSUmQ8MERjB92DuTWZqBiJpZZ1QS7Kao3TgIRQ=;
	h=To:Subject:From:Date:From;
	b=Jja+4kaOuvza/5GRqcmvku5vz1yTxOZzTJgHfM6Yk2LiZ4ORDpZ+lNHuEFH6ah+Dg
	 qynRRXrzu75r8OhvHQBqCS+H/m/zF9VSUHNDyRGuBuOxUWhiwRzUJ0xHsRWaKWlO+y
	 LCyPOqJGsa6PKofY88Q37o5B90VGjCqSihh5KseKX/FxwGP7TQyI8gG5sAL5qzja58
	 FYb5XUjxQMNQrUz/46nWLTmfGORDewPMd2ez3XO0I3YSl8nnl96zyT5518Nog9wved
	 PzCIRbTiHc4GqJqPzALqavc9PO7eEBLNq9cCLRqrKKCk73KKen0V+28GpnkXfy1PkT
	 5HVgWEZGW2X3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9304610A88E0
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177454109359.23186.15788643761585254769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f505297cde429efb995bb6c92c2466c0cb49506243f5edc3f5e645c5d2cc4bfd
Date: Thu, 26 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774541093
