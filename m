Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D06E52560
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BE79C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673521887;
	bh=Difbp1On4M9+cIuZe6qpim5C0W0Q8IuhRAD+z7J1C60=;
	h=To:Subject:From:Date:From;
	b=DaHp/hOiVmFBsE9SlDS45W4AYt+Ct4wfTX2EWpshTtC7DRjpVD8gW1Vnrjr5TbEde
	 9hXBtFsL2WveL5MkJCiEIWe6PH5Px85xvAnTX2eo3paWzEdaeEuO5DPJYVEhL6RJbz
	 hnAi4FhmBRWjWvEsw48u1Yl6Z8q6ZC39kxB17qCRqmuZij1xX8DzXldQzdHJPWMR0e
	 ll/iTpHPHsikBszB+NqeqTnj6pkrCNGZ+rlr5OsQribjzZPobAUZOHP0HCRdkYGZOP
	 BrAbPNVndkRmWs4MW3Eh213UaK2VlTU3RsTewXp3owQ+eY+E4KXfP9jjWZ7YDayBiZ
	 XFuwUVR2bLVew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6317EC54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167352188739.23725.18101138715378898210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c8a8b3db675cb48ae89b6567c4994c27f5bdc8c88700f4930ee1557300139c8
Date: Thu, 12 Jan 2023 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673521887
