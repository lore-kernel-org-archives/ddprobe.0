Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E608B1365
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 10:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650449218;
	h=To:Subject:From:Message-Id:Date;
	bh=JqByr4V1XK9Ptc+JBoiBNfXM2a7Z+8FqU66gZxeFSaY=;
	b=jXNusiT3rnvWogSxg++/vbzwifrDH+dt9d19mxcZz0DyN4VH01EK8TbzPjiGRXe1
	FZGDtFX6A0UanlZk1syd2qrqH5Hey3/XRXy/bz6cDAbc7rULLXybW6GTMCev0y87xDq
	bsFgokHdvEp7MT3oTi7Q/Kf4wwpmJnXrmtHGjTUE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650449218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JqByr4V1XK9Ptc+JBoiBNfXM2a7Z+8FqU66gZxeFSaY=;
	b=SqSq1lbdU8x31OgjMaI0VrAeVmTcogf9O6C/J4tvL62hmXyswmWmddOYHOnQz8Dv
	bAk0AuzFiWZmRyKfLe1SrWYEm61XVpkLPycnx4ZMt5gERrAwUmWavcbs4dGpbhkhEqn
	fIPPe4CXZG+xkUph+rKPO5BE4Dbi7tjhjMAYiz/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018046707ad9-76a3d448-c371-4cc0-ac31-0838a51dafe6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5e25550dc0368ff84c96a3e2707b0b225b46fde2aecb9505d19499da185b5ee
Date: Wed, 20 Apr 2022 10:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650449218
