Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9931370F4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 16:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 003EFC433A4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 16:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686153726;
	bh=JA3HyN+r2anfBncCDP5WIh7a1tmgURXzRjYDmVFisK8=;
	h=To:Subject:From:Date:From;
	b=ihWidCAA6Z6y7nGvJmiVVl3RfNw5MPuEOKBqEOYBu3rxMy1+CY0gTlnOCeeHBp5eN
	 pAPpsJ/rpurZdzsBqGANKID86tGPP7ptJApSCmN6INUIjzdes9u4qdfy8fQxTTFfE5
	 otB5V9JEkFSnIM9iCEf/pjR2NdZ6zqPRdyJoIJAYxzHbl5p19ZC6cKBplhls8dz68m
	 fYo3qB+QOER/sdssKELU7PwcPKjZy8HFJcEEo0VXJBf4p/p2TlN1vFAJLd0ljCo5AR
	 zRfuVqwMQdHRLpLK+qzyYFPyJaZPgxiZ7tAnuoLZVkfA6jt62Pub9JrHFjsfFNp9bG
	 Tom+xTnQzzy8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C57CAC77B7A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 16:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168615372579.16001.9992722338594121380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 458e3bcc0113599e61db3ac532230d890905fb2e9ed919c3d1cf4f8a4e1d8710
Date: Wed, 07 Jun 2023 16:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686153725
