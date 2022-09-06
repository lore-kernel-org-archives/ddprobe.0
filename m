Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C795A15AA
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70321C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662436253;
	bh=fzEPhGRmGjaSS3+cjPZ4mabxfoziHSUWcqxcI7QJ3qw=;
	h=To:Subject:From:Date:From;
	b=PVVHC6oAYJiSuymhEoZ+rbzLko8Md2wkN8qSYq8bHxrZz9xPWf7lRhGDgXla93i1H
	 7ASOmBIwyJ0XfjgS19PSxr1kpreg71DTp9r2x3gdZQDJ2w8H/SMBWVZ2BcJCCrEuxb
	 4uysp7Ds9ukSLptJ4HdeQD8/9b8MnQr4UZeYudLX/HuaMXHkzrdrvwJ+1IHvAGVvvF
	 DgNamb6A7/8GxPlTW4IKeopSH63Seh7DLCTIYLM6CzpLlRjBAGgKLoX3Zd2waZEVgm
	 Eqc1aKLpuUPhVBqHEscQwnZb4auPo+42gc8EVytNVHdHUibo8FmUcCVMGQ+f4BF/FP
	 VFyuVopKg8TXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54998ECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166243625332.8624.9757737733941765827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd3bdd73ae313b0926d09202fe5d9d2ac4483b4b561c08a3f452303442e73b6f
Date: Tue, 06 Sep 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662436253
