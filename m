Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4FA1DF730
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729497354; cv=none; b=j4zk1jlMSglxLSKOvey3SukcqMTuXAvpvkLG1oSLXTZ+on4gIhZvmLtnZROIjQe/L/fg/5xcCEtHvVFtly1TW6jyzvSYSIAwRYO3pI3xEN1HSCPg35CY4E5XlrHN1hWrunloZ1+5mQMC5Cu5R7v8AAYxjhrc0x+zQ6ejS1Npk/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729497354; c=relaxed/simple;
	bh=qVHnnz9fbQQabE8i1m4+6WlqQ0jGlVMvHAySSvtgIvU=;
	h=To:Subject:From:Message-Id:Date; b=JJDDBIglfwjNVSsOA1u2IzjI3/EEmBzzgGreql/wqH+a6COx25rIKzHrJh6pq2ItZNYHHJ8e/a6K8va1tzY9TpwTGSTtfY9yoZsaaYh/O20BTHcG/HIahRnlZYSI4kNQyXHET4RLMrVn6w3tJ3ajrdJ19DopANH2M1+E0b05ygw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpwz/Cwa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpwz/Cwa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83AEC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729497353;
	bh=qVHnnz9fbQQabE8i1m4+6WlqQ0jGlVMvHAySSvtgIvU=;
	h=To:Subject:From:Date:From;
	b=hpwz/CwaQTcQyVrYM7F5W0S5ZMtWDAQttUbEAJf7aLV7jnzWpEmavHXpvhgjoO7md
	 HoN4CNjPwlMO+wbjAz6kzwytaKRD/o9MJxG8rJQk81NISwui3hva2+OwQrL3vjGrf5
	 HRtK7SfsDpNhwpeieN0X/Hjdx9zGdBDjVSBZgq0HarQpFG2ay2redkgFOOw5VsS3LH
	 KxwkJllDJgQFeJ0gouZdMBDepaIVhPdpENRK0H276GfPFQOd8U0evG8EIhQXcKamta
	 JKlMfFy4EhRfI4tPTwzBu3Tw8xScxkXaRBW3OGYXhDA5BnKzakPOQ8v8XI/v/dWZDa
	 0ccspm+wB9tPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950B3D0E6C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172949735360.32681.2807943770819666751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 906ddb063e73ae1caaf982b269b992407514a09356043bf5ecef854475aca953
Date: Mon, 21 Oct 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729497353
