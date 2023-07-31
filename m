Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6E3182A5
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 11:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4FCC433C8
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 11:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690804328;
	bh=+BmCHf3il4n1vhZ86Yt3/DuCedg8rBslhv9cUib4qVA=;
	h=To:Subject:From:Date:From;
	b=KINn6zRknoWEPDmCX1lEH+hFusFtSCAX+FLTEvFFnKPDOReElnIkdvKebzhSDSV0R
	 8RPirRU0ZjLzITDzBc+me4X4BaCcAHzfjNqQMtl8VkiRua2IX0v+JuqfVYRig68nZd
	 ayd9Q4C/0anbxrR91IWRw1S3WVFzsq4I5GqRN28/ni/yejxRv5XSO/5dNIRwjw/PsG
	 lu1P+6ZcnamXoI/BOhylRofEBFkL+oJoUwgyMoEm9lhO7Y0znuvXo7UROG9FpppT76
	 yJTRN7VgfcoG7Hn2OR0IK8N/mOzDYDMOpJs3n0IuMjUrzsolmBxNs0GoQy+VTlF8n2
	 Ct4feSGqNTsTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5406C001DE
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 11:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169080432873.21039.11991437202433272121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26cad8a443eb92e7f8e749fde9fd684d985a4a10103242fe575106183e696c21
Date: Mon, 31 Jul 2023 11:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690804328
