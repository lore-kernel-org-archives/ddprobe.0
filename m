Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF38515A5
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 02:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7279DC433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 02:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668651654;
	bh=OqR7i6GVDZz0GktcRmMRG4hUq9Us4Pe+LhQCWFnSAR0=;
	h=To:Subject:From:Date:From;
	b=NjitzRFNU6m0VttqIOf19Wp7qJPOTPapzEvN71WVx7WL/q3sZqX9p2EQSFGYlqtwP
	 JUgYZNPgALATe2qgUlgfyMVr0SoehDi1bvbo7C3CKTyKL4Wm0DKUQGUylOqhw2cT57
	 YRwLXSQX5QZCPfhM+qqt6Vsx19xj2A4Dmb1YoZh0IXoK2fpiki+sGZFqrYv8Uhlzx5
	 BCEhuxhM7zzQkxpQ3lXMlpl/X2iTsoDrPosCUs0nU0Y6uYSWmBlJ+w9Q7/w9NsI10I
	 D2VHf0zZEotz2tDRHw7Lu0vvhWVYdYH+pB/NRQFJxol0fyoZ84r3u2vqD6ertUbESQ
	 2mne+nanaQ01w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58518C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 02:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166865165435.16329.5112779338888063377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9680773f01c1d38a1bd1efd6c811db6fab63a60589a538170e0aa87009526bef
Date: Thu, 17 Nov 2022 02:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668651654
