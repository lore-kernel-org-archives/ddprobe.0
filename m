Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FFF125C0
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 23:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E1BC433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 23:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690933328;
	bh=epxug/z+ldgfHHSIHUdbJmeiYy6BVbTyqoNxMYrwBME=;
	h=To:Subject:From:Date:From;
	b=haznYjLCOECcszGv/FgE5zF7VcIlT1HOt4ACDjmxTYc5ClV6id3lrYNDJ9FEDZGNA
	 CurxNV/LYAPaxWyEU6Bq8rnzdgZaRUasCB3KG813nFfFLnN7z8tQrD0GSR8TckESwe
	 XHiJqKn5QN7cJCEEdIEtu0wpJK5KGtKK7HUhsqvxuSQGzPlfcn7c/M5djLdMXfLKdo
	 alywLJ5vGQZ+mehzzZjCvGF2UjzedBAlQGbIM+14O9s5IKFUojRsd7chUjzLscpRp2
	 zGbvpgUzcUpdjgNviaV1y1S+mnWFEjuM/TUvYSm0xuK4U6ZXFttmjfEdZFpfoQfgH5
	 M3MH9jsWk8eSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A63DCEB64DD
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 23:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169093332867.13938.7155440556012197702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4177a3dd1a7e9ef552662ab591f9bcb3ebb0d68b09255e8fc957924badbc9ea5
Date: Tue, 01 Aug 2023 23:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690933328
