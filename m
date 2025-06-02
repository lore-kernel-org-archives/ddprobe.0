Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8E724BD1A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748900994; cv=none; b=CzCrppdNJjynbuPWUd6fSMfHuTXN+Tjm+rjG7SUlCOaAIjy3T/3PVzFc+CMNrS7zuVoX1ooxtkjPbgNf/Uv/guwGfBnmyA7WKrGzhzWre+x2T4Wp6Ih0LlbKZrM2HKSnaEjsklhh1iKfXRDt5IZmyr0224WfeesjS+hNDz1IHk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748900994; c=relaxed/simple;
	bh=UwP9WmQs3BqyawJ6TDad6qDsrgHkzzn5LlhPBzIOQTY=;
	h=To:Subject:From:Message-Id:Date; b=jmfYgdK2Oar67V++/CHb5lZ+aVaahqewFvZb/Xp00H7NSnazkI3JQmoEolxMwOiNCJJf1sb6DJucRsGJdPZKrE8OIZ3RE2VIDJSjSNrqIdHEa9Lq1oGSxbHPuogO8EwdFcYO53DCmgYOHxjTP5Ww6rJ40ZsQ1hX0SYS9rG1C8U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/xIM1oJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/xIM1oJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3B8C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748900993;
	bh=UwP9WmQs3BqyawJ6TDad6qDsrgHkzzn5LlhPBzIOQTY=;
	h=To:Subject:From:Date:From;
	b=L/xIM1oJCTEfdh4L0oK0qK+YYK8qNGokYpc8zEBfZnktd7+KmXaoWtyugriazjiQZ
	 fIxR4i3uBAO4dNy9AM795Ak84NSm0K0qPHmJIVJ5hJEZFias4TVwREyPN3H71q7wPV
	 eU8fVVB2aMFqkjFv13JiqflAX2INKCQ+MvYRUZuOu9rNdrNNBfmYXT+G1Wnxasx6LH
	 LC+Z4xnYLtr075LJ5iOUZUyBIcduQKO9urNE0C7L3lRB66/5CUM9CFp5QK1mKmdjqp
	 akE9jCXukcmJj1j2Vjy3fdUWx77jrqPUN6XQsVw7KoWLWaUHwBApSwaQh51nCuO906
	 PlcTewO2AVBwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DD4C5B549
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174890099361.3266.14578600534054585254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4cbb33377ccd55b6ba697ede0b00f4ea5006900e8c58b50d81e28e6ef9b79bb
Date: Mon, 02 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748900993
