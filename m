Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45EA7E1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC76C433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665911453;
	bh=Ys4c441RJ9BPhbmaSKIHBUuy7e0mojmAt4FqdaNi4OE=;
	h=To:Subject:From:Date:From;
	b=a3U28Jj58fAzpZI/mCn05wsFRFA2Y8nNg4limN/ElWNdAOXpOgT5SSHy/BqEn5Efx
	 8NZDvYmew1XSrXHdu70pdhfAHXTkwY2ITk2BXkiqSUcWM8FIBjZaWaWGU1NmP2YjWQ
	 +Oc4rAs7/izwyblFPPDP4DYRi39vbuXiPneBEM7kZ0ymW/EfhqVNbIuJ8aTiBKCo/I
	 /IQ2hV/SNq8L8ZOu4f3AJJtgUN0RvzkCdkcfiiS5wMAkigGMTberUn9wH5abguSpkn
	 MeU8Fip/jgcvyfW8fugamWNBiSK84AP4af4GvYjjv2eXE5tp3LoPlPVhss7O3yBito
	 CHdvcLRBThb3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52BD5C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166591145333.8115.3674576848205102054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 921945fa843070897234e74171e6d2b48fbe3ab815cb6e282e287a15653650f0
Date: Sun, 16 Oct 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665911453
