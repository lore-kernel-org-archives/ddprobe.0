Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A3E0134C0
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 17:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D1FC433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 17:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688579228;
	bh=Zd+2KH8jSwzLn7jANPukV07JChpLANps5Dc/6c6AvYg=;
	h=To:Subject:From:Date:From;
	b=kaKnqO1ik/u6qFUxIBc5XHelxyj1fQGTJstMRY31ITnIIHsb/taVrUwcbqCQ26r1s
	 6kxiv70uyl6o6RQXcfHduTEgfSHp7uAbB5eMBNI5sj0/VUHJSIG6pbpua0hf0mJNNR
	 9Ju+JDeb0WcBbf/ACtYA/Rs4Q+TJOZkWTzaHPNUyw/GdLxCZRftKrG2jndoa9gps33
	 jkCRtccMaxlvGKU6DbjAsckq748YR2QKDSX0CXZucjDtb2OxYhEzYxh6tGXCdPDURV
	 voHA+XANGNWRmitTa35CvxfhkmQqgL3I05nCeXBjKlL8ojUWrmaDS+qFKSX7QXkWWw
	 9B/WmO4sxWhJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B5EEB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 17:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168857922877.10735.1190800715143027980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0761948154a9d9789680bc7abedd558172d76d83c2475dacc59ecaf48b2cfbde
Date: Wed, 05 Jul 2023 17:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688579228
