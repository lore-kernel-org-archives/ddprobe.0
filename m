Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BBD37E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 00:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646957484;
	h=To:Subject:From:Message-Id:Date;
	bh=3e0BD+DWMLGTEGF6xRD1FyKRtx8pxSrfpe5xgAn0RxU=;
	b=ea2ibIuKmpEv7CgYTqNe17sCJEGaRhap4z/QJCQalL9zE+NRzmqEn4Tmn9gQq7qj
	ftPVpEZq5EdwOz/3w4X7L5GSXl5PqefRWwVSh2Qfqu2gmWoKdEmu/wTH3CzsYORXGGY
	tTjEtX6qPfim5oBZsfo/kN+XIfSyZrAHcHrjyaXo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646957484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3e0BD+DWMLGTEGF6xRD1FyKRtx8pxSrfpe5xgAn0RxU=;
	b=X0KMswlpJrfgkHqm1kwta3h1zDegH71UpUOvAze4iDudYVIdsINg0+1XDzgcyKPJ
	Q9b0rn3KxDBHWvRvw1tU/57j8KzKUvnyE23vB8lEX76qK46C+UGK+YcqqplvRba1URx
	/Ij2EjSS4B4CGHa6T/F0DsfzqhP+AxVMFuvE3Iu0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7650dab4-0f8c7a00-cf23-4df3-9b89-d5bc52377e0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70838a5d36e303a7f749683fd124e86549fd83dde9e6294138c77a3603ca7b5d
Date: Fri, 11 Mar 2022 00:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646957484
