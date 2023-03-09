Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79C5E628
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 01:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2024CC433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 01:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678326066;
	bh=hMvfvjfXhvN/jiFp+RIApOc9YnHXG+5/DB2p2C0+vfo=;
	h=To:Subject:From:Date:From;
	b=I4d9kEa3o5YLn7OF1C0pEd96/nJGGoSqgkrks0v/hSmnqvsVdMYhi7XPiY9eJ16Iu
	 +03+gw7MaTYmLXL21xJQakIVIGIr981Oa96owg1DSg3XgyPV5O7EvvIWTsRT60sfss
	 aBLbR+JSkzvbL8L1dNKw/lbRlsunLflXbQrPd1SdoWsShJ5/7a5S5Kh7meOhXclfKh
	 7V0zxCYYH+8VoXlo3137i1IVDj9/QsUfgYjYGQ91E5+3Ve8PC7uqaZVgSLJZhGCQE3
	 HL5JjhIYL6Xg8bqYZn9y2SQ5SFBBOeA6ivhR2uh+Jnt8i6Mk086l2kbaXhpVwDYRGF
	 zgw/M1M4T2Lqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 045B5C64EC4
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 01:41:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167832606598.7831.1976252452542094438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b3a997002a513a128a212cf57450e784b04547f1dcb4def8654342ea111a809
Date: Thu, 09 Mar 2023 01:41:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678326065
