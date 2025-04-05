Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D071EAE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743876594; cv=none; b=DejyNT3Qd4YIgIKjwTc2513eTBIS8ceqrpVRULj/6F1vyKCMedo5QrxwVFKGpoBniV4kH6Jgj4ohnui4/XMAVARtZk+vAX7TJMM8Gb2ZubmJawu4i6znpZqFXRU0OoU2JBusoIOHheiybL7lXTRglC5G4F777/IQL/c8facrF+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743876594; c=relaxed/simple;
	bh=LoJ57lvQWCmA1RSS5YF/qHDKMESD/iHPtjyzty2ZDWQ=;
	h=To:Subject:From:Message-Id:Date; b=A11/kyAC0bBIUymSH/p+Ilgl1KMuI29Q7I0Y1hEoulE6T/2OD7Upcq5RHCiXcMMJ4f2kHeMke4BCd+ab7l6oWGybIG5lbRmZtuoW7iT7iE6qRUK4XKi4mGaP5YoccHdYAhf9jJMNxYVS33aiQDAdpEbvGiu9Kpsj+R0yCPYKVjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYqowsu8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYqowsu8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43EEC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743876593;
	bh=LoJ57lvQWCmA1RSS5YF/qHDKMESD/iHPtjyzty2ZDWQ=;
	h=To:Subject:From:Date:From;
	b=OYqowsu8JlebOmLiDkr7+9Piow9z7vW96i2oFC+KcSw5oNQrg6Esj+YbYX9d+qx1v
	 Pc722MfblgO1F/i6DyBJP7avMkY0wXo7SuwH4+B46DE3k6xXno1VFqcyIwBWZBCxgE
	 SSWaocdVoNwOUntV8kxhgZ0092/XyDF1kzGKm5uJwDyx2jOkp+CJwppqVZJ8u1IYnF
	 wCpV6lNYwlWEZza6xgiI7JOylamSk5Viu8uA+ZqGLO70hTfmq6HiIlTdvvFOPWVdJF
	 MRXfvPLZW/uNxLzz0q8ZS7x+pfLMv2RWU5G9O1U+le7va4oOqk6ZRi6T1gPWOOJ1pp
	 rsjC2KJ6dSGgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949BCC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174387659358.1492.5299768695508086679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c83e04c052d6997bd5d0076de594318aaa42c5ebbaeb23e7e3cc79f90ca229ac
Date: Sat, 05 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743876593
