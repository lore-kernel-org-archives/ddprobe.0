Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEF1046B6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72092C433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663257653;
	bh=N0/U5w1K52Qmg3jp8CvW9tClUGYV+MJtinENeL05uIU=;
	h=To:Subject:From:Date:From;
	b=lNlthhsqreAgaYaCn76K3Au+EvslWrfyVJYVZn55jZ83ALhCh2pDco4i8V8QHaKpx
	 NYhXjrGBaQGOUQ1MvIwfVmUHEq8HsJtiKMkdOMfTrVUqpQF+1cntGBvQoQV0yuTsRb
	 qPz8UfJoUGlFHwyxUejjJJ6mu9vAVnKwufJqxFmaszOLo3MeFsleg1ULTTe6bUWjjv
	 41XAG3hr/L6KT0tnNP9oZ79eVOpqXwhcaGUPIb2TC8rwR51eW8bOJQhYJ6biAWLo/L
	 7oeUQsJN881srH7OEi9IEF0xfMBordFFAXBww22i+M+M4RHgktApKadzEuMnmMasK0
	 +Ib9nz0Zn0Npg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56458ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166325765334.16643.9930200358242699239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae5aa407af4e603a032d4e2794664988eb4e08d6b1973f6cb5381fe0e600667
Date: Thu, 15 Sep 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663257653
