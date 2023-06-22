Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838FD10F5
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 22:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E440DC433C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 22:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687472588;
	bh=Ak95w/2yAYutHxwFD+WfFd4UEoJBaMOZ3lM0fkAV5nQ=;
	h=To:Subject:From:Date:From;
	b=sown9VED1qud71bntdhziyhMi1uHtoM338BXXF6vIAkYctGhjbI+09SvTa+xp1AyS
	 gnFVE28RIz0U1Dox/2vLJex+6uI9nUPxUr6LFS7AaXLuVv8oK2tZR+lIVEbBNkTD14
	 p84PfnQx/g1LNdm5XB4DBdmlKTUYOUbwB4tBz2dAAOGcHnjL8K1ODFJqwnZffhhQ9T
	 7pSyO6HE//T5y0/thLeYN2YO0gW1+RMx0me1RU8KGi5kVh7P61zK6VUjqpoXqnBcUY
	 FOC+Kd9ohgOc6crR1dBkr7KkJC9357lNj7o7BjLh46Av0ulNTWDTmr0YGz1ZuQ1pHB
	 ChXjB5nnG9qBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5FBEEB64DA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 22:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168747258876.373.8849917038075307067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d5fa80375fb2c48032569a14b98ab243e3135c0f797aa1675a6d4097a847e3
Date: Thu, 22 Jun 2023 22:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687472588
