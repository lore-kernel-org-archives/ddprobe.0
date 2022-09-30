Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C65B31FA7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75DF7C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664532653;
	bh=lviSYKrXJZuIQKGM6Xi2tzr6hoKsFsJLTAn6fJxmN3k=;
	h=To:Subject:From:Date:From;
	b=neODDxSLT3gF//S7ATc4Tj7YHQww1JglRY5OCZW+7UbDW2DeOMsoMBxdx4CvKjXU9
	 dFTvfyVRIVBfMrfqw8LDLnERZd3Sd7giu1LSS3XYTqPC2eDGiEVTGA7YdHBGAhglqR
	 IlQVwuuMYjsGQkIA/Kk+8ybUJCoZKF/NQW+o9YOhola6hN6r+N0oGAX+JPq9YUS6a1
	 OL6p8+kxif/Yswjy8mz33l0VSCgdLvhspNA+XzB+NQrIaQZq3e4XaOajrhyFnRJeb7
	 Qbydc9PUbHdDnvfWqC94huvMeXoJ+jJNJHFxMZX8/7F37NUxentPDIK4m+vwCmj5qE
	 mg4xUJLYKErNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57766C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166453265334.19226.13052828844268274998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ef07c9e06e830f2f75a976b22000210c54d4caf4e80352df4db32cf287075dd
Date: Fri, 30 Sep 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664532653
