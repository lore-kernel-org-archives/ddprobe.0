Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE0A6ADC
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 15:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A85C433D2
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 15:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682438165;
	bh=5H23PJVCtvxIs6VkiBekVZ5sntYD+U4gio1DrMeShqs=;
	h=To:Subject:From:Date:From;
	b=rUw+CtDkah5AqZUUzWjT96egm2xkrqPwcTmTjZy+QdLb5VkGwoUn4rGjRPDmvRdC5
	 APjuhdi+P+VhzvGfluSCISjIGe50QomZAaI3UgluQbQvmMQji3Dff0y+L2vwt7x0+c
	 MDUSi33hhVtGdXc+16KU7xjKbx2VjZSHZglZ3nhnOCOZSi99kaI8kZe0/VQSDi8tme
	 xHS4zSDIigJf3L8JXWZFPOmPHmJr0fS5uZrpZLgjxXjx3wgCpINkKCqUPKqt8x+w7V
	 DqC1r2YrnZTl1pJZ/3cgUuWmdq972iJV7pW1MjIZDdLgnrKkHIr/ClochSGBSZN7Tx
	 wvnmpmuKSC5Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC705C77B61
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 15:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168243816575.10654.11394444558529598570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 072b17d4295cf1c142a2861f4b250facc1893f11cc21d768c0c9d485efc2fefb
Date: Tue, 25 Apr 2023 15:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682438165
