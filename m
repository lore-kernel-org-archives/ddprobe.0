Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB0220FD
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 16:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4167C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 16:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674232325;
	bh=pdGcs7JQXunvWDMQxLMF6pn88BW5WJ0WJWry5yJd+ug=;
	h=To:Subject:From:Date:From;
	b=ptgVcJflw7D12Y7OFV6NUP9ChtuedGWPcuSdTd9ML7JryFGvQCzttACkoU3FnNwMh
	 P/f+XmSiKUPTXAa6QHNXPjf39uP00wK3lYvALSFxW+/Mqc3t3pbWL2UV4yxJqAYWPi
	 XnNaflphLdSD9t9dW8UegoVO4yZ7IGUiL/DgzOmuezIIA6I20xHVTnA7c7mgIzyUZk
	 /bEAzq0oIIhqeaJZ+CgdgjNjqRNJKB0M8oE0D3ewmCuMYOFQqWnfn+RYN6ujTqBw4h
	 +7uV2SAMjATCefae6W7am85pgK05iquQE5wuwssL7W6hXBYTswpSW6q1fVYdeock9R
	 NC3r2tItDtpag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5E7C25B4E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 16:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167423232577.17392.3241806812362379288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cf948cbf9d5b355853f578b9275420fcf44000b7e9f8bdd369f0c4425dec090
Date: Fri, 20 Jan 2023 16:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674232325
