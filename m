Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC1A36A
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 03:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646279785;
	h=To:Subject:From:Message-Id:Date;
	bh=j6hqrnZAb+lbf3la8Dl5ZXswmoCXRsyVo7EhHE1Upsg=;
	b=VePY21cpW3WBUVC0DvMAv+3NfyphnAp4zbmUGB+fLNsE6pz3xSd50HqmEmMMiz+D
	OMir0CSG4Pabt3jsYpodjTS4zrgAiVG4bgn3RpgSn3tvqINYnitFNmgPe0eQsrfiLtH
	SR9uVurwUXfuOxYyL366c0bz9fPLnBF1oosU7dTs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646279785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j6hqrnZAb+lbf3la8Dl5ZXswmoCXRsyVo7EhHE1Upsg=;
	b=GNpOmgcuzk1n8vhGvH+rjybXPlBDl3MvMbY+8XPcHt4+7tjEVnbELKIf+hM2vNSC
	sC/VC8vj+3s4Wx9G2xIytNjDWPzKuUv+8BK2fcEd+7oUW2F7/go7xltbu/mc7qgK5md
	kOfJ/3SqbvQGkQiOuN5ujLFI8s4DdIHmC63CQHRs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4debf92e-0bbfead9-4e53-44f2-adce-7064ff79dae0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a74300f7b302139eedd028296a4bb096fe90dcf3bf8d81e8a545c65845f2724b
Date: Thu, 3 Mar 2022 03:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646279784
