Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2F31E5B68
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762746594; cv=none; b=TUkkzn0yEvu0vLl3yh8Swy7/RSLx9mOLlVJLw7/glTKc9y2usjnASo8g5gxmE3HCG8D2N7QLIknHvriX+S19jKJ1ah6w0/StW1v35XtRZ6PntX2OZG4Ki/U6gbGsHGNHP2UrYsZowCDsgXspjH5swspQOR1ZZUwWzmDH3KyB4uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762746594; c=relaxed/simple;
	bh=Vd5r9P+HS7H2KxHbW6BDKjBmJX47P88NU+NllD9gkIg=;
	h=To:Subject:From:Message-Id:Date; b=k3EuoPRe+pi+a4drLXmjhMiKgsRGFQ4TV2LpNThSjgdszJ4NAKqm6jAUnUSCm526DHyQHxnV8VJlgfYU+Wm7vUjDelbgjUCRcuVQEfi55rbDXqZn1SWQlC4uGkh01/QQNkmNu7LfxyYvcr3N6OnMFDMJ95jyheXn1+xtjtEO6Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ureZ/rpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ureZ/rpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5382C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762746593;
	bh=Vd5r9P+HS7H2KxHbW6BDKjBmJX47P88NU+NllD9gkIg=;
	h=To:Subject:From:Date:From;
	b=ureZ/rpYj5wVNZKQYJqP2Tar/hM4PqF3cNrQZDodN7Mbp50jDrnKRIL4r2GOfpoy4
	 9+UgxbFdGnxW9tlZBT41Vsh2iOy16wldAJcrmgF6ainNVu7d1oEOw1wfZk0pjHDd7F
	 JdAg2dLVK75VPMjJFOZXAMmt1SRK87FZ0FSJdUtaqVomV94IZyUC/+fx1Ntye7VSfA
	 sIR4jJE48vECPAagbCAdEl50eP8zUVLkd1BolVNZSVXno71Q8eH9GgRDNrAy77Aty7
	 DADSlbMJFjz+Kp/aa+mp53PXUYWQCxX7hOqrn/NK6xnOeV0/aOtew+lu4sII2uP9+S
	 2FaLxgFa1Z+jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968F6CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176274659359.21760.1346729627614408130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e9407e4a0693afa35527d651104360b411fe916571d4dce253c72921178c247
Date: Mon, 10 Nov 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762746593
