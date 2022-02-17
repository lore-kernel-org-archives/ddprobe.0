Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 810AB437C
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 18:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645123885;
	h=To:Subject:From:Message-Id:Date;
	bh=UWWKtTHMImBi2iGewV1ZLl2CGUCjniXRR2i0hXPUe6E=;
	b=hrXXHSHCXvYcOaSR2evk/nE2t80hne0axbauvD+8lq0RCwFUNAriwBi0KqQPzJP/
	rplro/7UMHZ/BoOKhnOOoh/S/UPqSYt4Hw1pYt27gOd3+jl/dt8DCDENveJ+NweuqWO
	rVAe7B9ctdQSbLbZ6hvYECGUXO4djYHMG9C+sfQE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645123885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UWWKtTHMImBi2iGewV1ZLl2CGUCjniXRR2i0hXPUe6E=;
	b=hcx4dU2AhSaanYkJehAZF374bd8ui8dxtLt9xN87tzmaIXolDEWWOdqdpyZinoZ0
	j9E/ww5o35vEksiJeGED4cCAfi4P7Km1cSbKgVPhXAQkWsfp2V2Ikpy6cUOurutkzRm
	ZBQJbdvuhoTgZSdC06XBPk8GZZeR9tYNBxkMCGIY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0906571b-d2fe36fb-da2e-4fab-aae8-d5e07cac2b5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16b7a275f41481efc99334651d3d54adaf6b8c4ee2267d4228e43998fecd030c
Date: Thu, 17 Feb 2022 18:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645123884
