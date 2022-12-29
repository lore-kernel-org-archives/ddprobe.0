Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD7DB10EB
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C3BCC433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672279287;
	bh=QMW16HV4sGtmNlO5cCYW0Tj/Y4lo2kPwfGp8ycAW4Fg=;
	h=To:Subject:From:Date:From;
	b=Alp6TeNatFRSmgjkHChW5K1+w0AteM7IWjHfbqLaJUDAVh2t+AqS9dohZQ3GBg4Ky
	 gqpKGQ98/JrH6dRoY9neP+6bDoDE8jJUICeyxAWmT36BrprNTUJ4qBwB/EQq9fD7/X
	 VqfFCxc0t8H9GCurecvWFOD8Vet889x9YIOB0XLDdD4GS1ansazLSNDHPZgceIc8ck
	 GTYCl25TJCxMRhnacxS1t5BdKkLaqzry+Kw2w8uJ3Oz6uNbhK3Zh8EjS/5PJ41tdA3
	 tNCThHUr3AgHBuAVUtOGlkqe8dMSo4gdzdpD0+Gu7G0h/G0zVUt4dIZA6RfLg0NyxP
	 BdPhqm84iLQNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EB45C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167227928744.5661.5418241886113551193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0035a262f51e89a9862533a9a0105df15bdaaade3a912d65edf0813fa5481df
Date: Thu, 29 Dec 2022 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672279287
