Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1675C33D6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 23:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656457612;
	h=To:Subject:From:Message-Id:Date;
	bh=RJ9IqyLnnHp1MuafVoLYKThxgH5JKlKEWr8LwUdiKS0=;
	b=IT/A+9x42cx06CPBFHdnfseGO55qJCaPHQJTMFZR9omx/g4F/fc0A5bIuRrcKBuX
	RZpEtX1VHE+Hld1F26CXiWId4QI5zpbMJ4IZpOurnj+R/1bhqt2IS4E0F6WEN4DdLtL
	isBes9VwYRmjlmg6k5Kw0IfWryNq2CT/2iyIHdf4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656457612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RJ9IqyLnnHp1MuafVoLYKThxgH5JKlKEWr8LwUdiKS0=;
	b=blGSc+2KxYhAjPspeTtNZVeiyYUJw94cH2YcE8mZwwixUjBX8qNhDisfOqOhb/PL
	ANhiagGkai04Lfb3aiO7s6vX9V8BEqTD3EV/86oqDaYvEwMIb7EGFiTon8DG+ppcDQ1
	1skCgjEqAbepRCadrEapPKsbFKN2m+euaz7DUG3Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ac914c7a-0636e1aa-93b3-4b85-9a55-83dd0807a337-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50de08371828bca7d3c1d6fdb197f92d30cb44958e96d27b29222f0524723a45
Date: Tue, 28 Jun 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656457612
