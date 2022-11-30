Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03F23214
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 13:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F810C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 13:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669815654;
	bh=QsDI52co9Bw+AWf994I6ngEpr5tZdiOH4nGHim6mMaA=;
	h=To:Subject:From:Date:From;
	b=pOcU30IH2kia93W7lcjDw+z0swlywJNeVLzSHEruRaJu53tyWbCaFpvu9AqPeuDaX
	 s74Tg1nUqoqdMOttbbHLdJ0z+mXuUbiDA2xC6zqs/dyZz2rSSPv9zfL7IECOnD0Gil
	 GWjR2vulk1BQB7QnuiXo4xyWhRLvKv0ZMWivTwZ3lIANS6onfJ+OD34y9r9L6Ut1GT
	 8Ap7Lj7pVo0THHOKdQJUZPyOeLi1rU3fEN4ElJo5mD5GDOvlCMu+RHBvsqf4JuIXda
	 rXIorxkyHSviDBpS8AT2JhJ6eOCw+/1dcneY6mZPhsAzOzlG16IuK5ebsdfhqopN3M
	 A7YGtZZT2anBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68896C433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 13:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166981565439.19869.2423489924640136901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e514dee7b21ebd7841a4d276f75fc2560a90810340b4a896b62381051a3da816
Date: Wed, 30 Nov 2022 13:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669815654
