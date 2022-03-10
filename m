Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8EAD7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 06:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646893885;
	h=To:Subject:From:Message-Id:Date;
	bh=xmyGhx3KP9qSjsur9mNnUKsJtwH17DFl1baSIMtvJBI=;
	b=VtoW+LJ1mg29TEfIoOJ9SaT8dIq/CiD15sx068OmSpfWj3Iy9SShlj9PLIF/6Hei
	E5l0G9jgYXRXMPQxx4NPEIm54RAwJJQIXwKyTyE6udXsphjTduAlgsMqqtJS2VlhAY2
	PdIYV7gvbGzU1b4Ydzmlq/V3VmPCBF/WYNhNPkQs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646893885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xmyGhx3KP9qSjsur9mNnUKsJtwH17DFl1baSIMtvJBI=;
	b=gpQsyGkfTM7867dTphkkck0s/yW8aLESu9eoKSX9LQRlhh0HPG/+LTR4eOfhTSV6
	yLItApbo6t7TNfEePmVixU07wI9cCtAYZAyoKy3o2SKrifp7kdujiDa9f1ZFPewcN12
	8h10ccp8dWk/jqugNEKj2SwDsMM98gPLtT3KO010=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f72866548-b2b4a9a8-8f7f-42de-8c74-456ee98c2cb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8493b93ace7f8f6d985e8761780a95f2b4594794c74a12b923a4600e78db728e
Date: Thu, 10 Mar 2022 06:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646893884
