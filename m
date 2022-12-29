Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B67399
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F5F1C433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672272687;
	bh=ny7YpS8NhDhRkD11wHhwhW2cyM8SrBdLwTkCCFEPCFs=;
	h=To:Subject:From:Date:From;
	b=ua3rMSNOZAASJL5ZqcSnNhbjlN6I1kceVNmOhQ+kMwXuXc+8gAnCzAQgAjfhSJjsd
	 oIWPx+qwokjYq0rKmQQEAn5rwPzfgJ1IXtjP/BcroXYkXrVgeolqfFzxjDcpRiEFP6
	 qvJRpDFMYiTHcIB6CxKOVQ+7+5/2/rrnrfP/vA+TXkSSL5bZwet6e9fRDJUBICl1pH
	 LQnS5DDSGeSLplJmrqWYOr+bjOznQxGFTkeaOY8XSkPdE5VaaqDizweVjokoUL9nqq
	 TF+6Zqe2PgcKRF1BsmxK2IVcE+ega8Cbe1Q8LHNcQeW+6Sxe+dOJhK11gjBorjbWsr
	 G7C41brmjTriw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61516C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167227268739.31563.4835545265060817922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89f26d6c1421787211aa0f73fdf4b12b780003cccf3f52f9e98e96d6517d1e2f
Date: Thu, 29 Dec 2022 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672272687
