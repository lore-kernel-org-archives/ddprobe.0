Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B909476
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735470954; cv=none; b=jY7J8VeL9DnyATaMJtpWb/LUQ5z1+JPlCNT4TGSbkIgKAiiAzope3mWyjzoWpu9WDp7q1vZsU8/vbWfBNJrJf55VAn31ruKF3w0gQzRXP8maQyBCT0C/cKz+yBApI9KbV9foBwgqg59AaDWj65giZr8AtMCcUWHO5/hE9C5O4eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735470954; c=relaxed/simple;
	bh=sIbX1u3OBH8YZYF4etRbgGGFJsb2gV9DODJE6HJry5E=;
	h=To:Subject:From:Message-Id:Date; b=Ohjqnngvd9tNMFk2hhOr4cUrPBvVsHmVyaJvR4wMW02QIxjxn4U8xCErFnxNbtFXjJz9IgAWgHwTcFvSFPCwG+aKnZT+UefciHk7aXithjrYNZ6xD+k52g8y4MOq6Nct+nAGmmyZzgC8Z6DFeudhMYgVB0LJIBNbLevHAi7jsWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gV/i3IZ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gV/i3IZ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF986C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735470953;
	bh=sIbX1u3OBH8YZYF4etRbgGGFJsb2gV9DODJE6HJry5E=;
	h=To:Subject:From:Date:From;
	b=gV/i3IZ6vRAAXQybAZzZKw39+tO5vODvL6mw6fIbKRfnsn8wnpzm74LPrIk9jvNOF
	 aLKL0XyBglOl+DS6dPDvZSOsSAuXVivB++STDe8mfNv2hqypVCCwGrEoy0J+dYQ8R/
	 /HnI1mj4apNKhfg+Fcg1D+09Jrrp2RExlmbY2XGLQ5KmA0ocwN/f3skTmRvB5rH7jy
	 7dsYGqQmK+trTFxmF+/cRNKUTWvDEC8NJHjnCNaQZLjnmwsOD/kssFqwsKdXF5Eq1w
	 VqSpODIHZ+Iigy3DiBrUOgjixcKCZjFYfDZ0TkamrKWxYocfgHxX9cPQM74HEY6kHP
	 MD32QI6StBwEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993AFE7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173547095359.12806.10610270947139051077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f25035ca6fa62f17ca36270122c6d40b2697882886037a5a57967a70bdd0597
Date: Sun, 29 Dec 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735470953
