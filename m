Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B84261FA3
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 11:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B973C433D6
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 11:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669204254;
	bh=ZTRr+OrLgerudWS+9/bsYFRyY2aDwJSh9V32yQynvn8=;
	h=To:Subject:From:Date:From;
	b=NcOnSszl9LDTrlnLG/ENov9CZzfar5uhtZgux1MSR8uALx+lpF5CrVx09dXA02ThM
	 XO48xgPpu4Pt/EQdT1QOG/2Bx/mrNba1JF9V1sPuhOsy830l9T78oUpemzBBK8zref
	 6NlBDPQfOi39j7HxWbCm+LRyC0FxJDUmbdBcnrXAHjbpJNnOgRYbp07qkVGy2EmXT8
	 n6NtG0sKlhna4CuC1yNfWxv2dXA+exC/Z1c5ebOPbONGOzh3a4VfhJGTHhZy1dGaoZ
	 Lk8wIN944KbD4Slf9ycTacBa7Storqfl6jwUS0oQnN/xwgGnB/GE+R7SFZqnsjXkW4
	 X2RvW50aCEDjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F0F8C433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 11:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166920425431.32199.11933128600123866471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 909d0f9ad99b5085394280f705c7fc54cd23fe2e1e6de1e607432a971db9ea42
Date: Wed, 23 Nov 2022 11:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669204254
