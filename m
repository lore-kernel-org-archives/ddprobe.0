Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3550564E
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 12:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DE0C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 12:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679834525;
	bh=45VLISVNQD79PnlPCrgpD5R4ET6+nX7ibVPYjtixLu4=;
	h=To:Subject:From:Date:From;
	b=DSZUPBqZKVzwMbAoVtZK3bdWPBsEqaX5zw85ZmmFrTuf8HRg9DooKWyKS9kSKLWIM
	 zTta0zDFhT65h3gk/24Jspj5HspCNltsVcT70mnTuY3u9yMJNstgnEcWl3cHi+9bkA
	 1zUAJgN8yrZM9ncONlDbGysLdFsxq6i0AqlK3h3y3mOLvKbLTbXclUPIINI3bMSUno
	 +pvnyOKeJFLr6cU/L20EghPu0cNDbrmH7YqngWI2atR7RUz3ABpHQvqXl28a+Sg0we
	 Y0RwCkZYiBA1pa8QHYTZCgtfUaba37SMgE6p1nG3ktj9LEGQcxXuiamA7gkjKTEeTK
	 1mBB+uKatT14g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B55CFC74A5B
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 12:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167983452573.2398.1667334150029871620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08fe725b105da6b361b4cdc47fa3540773479de6620cc0453b112924e3221a19
Date: Sun, 26 Mar 2023 12:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679834525
