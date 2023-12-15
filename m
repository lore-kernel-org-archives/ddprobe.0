Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA6E250E0
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlkoLzNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79496C433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702639696;
	bh=KNIQ+Y4Li3cNtbG3qssnsdATs6kvw+Ud6J9Q/9XXBBg=;
	h=To:Subject:From:Date:From;
	b=RlkoLzNwGdJ/z39UItFvrk47hh0OJdZzB8qRhvPNtW4f9rI2o/GirXWD+YQATOuwb
	 znFpoZAJ8pQnxm+J6hO3Y1G13AIiUFnbq4gpciNK664Xe8kLq3VAbQP5FlWP08e/Ak
	 +mAhKaO7VqxwefwSMOcxs8Ztzn5HSjzqCN+2OgxIvZ9KhM9HXqctJW8LULT/eJnu/L
	 YnS4K+M7UC2l39LQb8DGaDNcOAX4odqyW1xECt+UU13BhgQe9vw+sIGoeMHE5YO5he
	 UVltczNanWt4D1CCoa4rnE3obBWy0WFbCdM9Rdp0C2/g3OJo3mzSimEXlmlgToj9WH
	 3lx6BmTpYo56g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6232AC4167B
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170263969639.12251.7710264427555747719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17d4bc699e6e8afea3e4021dd906a131d0f29daf9761527ea0b3d0106a06ce00
Date: Fri, 15 Dec 2023 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702639696
