Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318AC1101
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 04:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8ABC433EF
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 04:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674705785;
	bh=lzEsD3+9xaUmmhtgkrk26linhH2HWIl8GltyRRvpXWE=;
	h=To:Subject:From:Date:From;
	b=fYAOZS2Ncp53TrT3IWGU0d3GZDgZq4WUZ4pCxusqmYhYXrzUkzIVa7bNEokc4s/eR
	 1m7DezW6NiVz7vhF8VFJgfHGwxSJqIrnphXPRmBzO3UuT8L48qD57jtWhEJLks0dMK
	 HG2KWAaqdLfV0yZAokZ6dXz79iQVST9OXB4eD8vCjEmiHP1iDTT5e6yF0ai2aJgmQQ
	 wtMLD3845B30CWr/v1M1xApVc3RZFBmzpCmWFVgvqeY1JXfjUvMJG1XnDLrmL+hOeo
	 MH+awjtqWZrz7oUcD14HDp7f+rlvTz6q38cbqqHrYpdabnOS+48NqaYZBdfAColUGa
	 quVr33reFqTUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B687EC61D97
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 04:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167470578574.30126.3127492066804807486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d022f29a51e15c940cb80396ff7b6df768058503ed7760fdb121184522fe24a5
Date: Thu, 26 Jan 2023 04:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674705785
