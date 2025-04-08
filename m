Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347D4264634
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744103994; cv=none; b=m6Zfkj1aY8Tn/4+IP8UWXpYez20F11eox6LBbJxLz6LgGSKsh3Q+ILksW/aeSu9BjsDUpE/nkIQgOQ+o92wLNLOsqykPwCQ/dX7ziwC02f/w+0aS7u67av8dCMzz3QkH+fcVnvrv9pxxastIC4ccH2SdgJN1ChpNvQQLRPhjmIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744103994; c=relaxed/simple;
	bh=vYmfcEJtHBsLH5WNYXdiv8FUFokkAjz1rK3SyZN4ICo=;
	h=To:Subject:From:Message-Id:Date; b=rdhTnZA3g/VmNiPwjKKAfBoZPV1rKmOQFNDdwKRQQgjZHb4ix0tSx5SFJBxyFsidXBTIkTs1ZkhGbKryP0QJF98Rv746oHRs8Y9yyBge96zazShMluy6ELnLLyVesyoCwP0V2jpeLma0n73nVVfaU65HSD/I9UjkFcI25vO4N8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4xjVYzK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4xjVYzK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DA5C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744103993;
	bh=vYmfcEJtHBsLH5WNYXdiv8FUFokkAjz1rK3SyZN4ICo=;
	h=To:Subject:From:Date:From;
	b=n4xjVYzKi6i/PoQ7nU5EdfyuUUGfw5JXgJIiQxMPP91o7T/hqQQ2QjXfy0cFl+DhG
	 bBvqkk1Rg4eGjjGdyJJOp8EgneMM8P8aQcGZMQ4ofWZl6HAKHJfTdWnWDKJ/g6+YNl
	 j+lO0EjEWeOjCOkeTjniI5K2TG0WOlTS4ZvKxolCQMelkZ6IQDhc+t0BCa+Gr6gyJC
	 iKt4GrwGS4M7mpFJpCKCP0KoezpCpS9AAmHrD9k0tJIlWqKUZG/IPchpf7Irp20JZE
	 FF9K2C0yOV6ZL9mMLcttjdivJZxKKYW4C+7kPeqVQBp93vR5vElRFP2aLct4hNhpr8
	 VMPqEKDi+h/bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982B2C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174410399361.4043.6478300275991674164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 295e67692a5689b5bf69ce6ad18dd01ac8acd7517bc5277ac7b496bdc1900491
Date: Tue, 08 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744103993
