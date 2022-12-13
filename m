Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8432907
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9494DC433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670928687;
	bh=T5w0UL5FbusmIKTu8k4mN46livgsDG43RvB+PmTaH4w=;
	h=To:Subject:From:Date:From;
	b=s09c63QVFceqo3kVzcXqNxH9qCTNNHyEYdmRH4O91E6XOSSo7XhOMgQvGY+bFijwm
	 mmDugVurQjSBYxUzwHceHb6BQxRd2LLw1H+HFN0tboXlgriAWZZEoiXtkc1y0R7ANm
	 Ps13pLdQ3SWHR5gVTmTnbGnNcqV/da/C702h0xQC2Lpb7bup0HEWW+3noU4ZwpxTWc
	 syVsOz/n7VLlamhwpJtJH9UuDmjHpz3npwrT64TNNzvKKVXLv15KDbCKTuFYcn/C0d
	 kv9+Ym66t9y6vJxA407+/ZnB/598LTGRz9CEYhQETYB8wY6kvhWoiVtF5iXdwhoRYW
	 6duY1yOrKNlyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 685E4C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167092868741.7681.5763879702252401629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab9ec294ca8547852a9ed81aab2b946841722c046c7359bf923a2efc78864c3
Date: Tue, 13 Dec 2022 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670928687
