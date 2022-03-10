Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 927357A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 07:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646897785;
	h=To:Subject:From:Message-Id:Date;
	bh=WDUtm/kIyVpfiZn7A58oEcxcpOEcYggSBrwQrEDJVxg=;
	b=LAXw3KdpdNro6QF9ZdbirKN+lx+6SHeP33o+UOs4vWLEFKdGe07Rwzt12o7BtoZm
	9YhMsumLJOYH0c5laBj4j60PEnJnxB9J8WyJyvPViddyn+iDZoNndVAg4E95fFPCJ8V
	kbyVbZrJoEv3D9YWRdlXmQ6Acn83YhczhvtXBPes=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646897785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WDUtm/kIyVpfiZn7A58oEcxcpOEcYggSBrwQrEDJVxg=;
	b=lFk4fviPMqEGE+k9aKrOrp0wj73VWkjgk1snwIdwB87hiXGgsvZSptIw0TkP9aNr
	vYjt7v60CEtuCY6fOMwYhY+wd1hi0th0y1UTrQDkt8j55ratMquCSsIp2plhYUhdXng
	0WMk+Qi5kXCTnYF1TCZMuzXamIW4GSRfbD+DAbAM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f72c1e7ba-8c7ec542-7ab3-40f6-932a-b6ab1909ca5b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 304f260b09c7a80c4497cdb9525ca1187f243877810ecb28d577b3c323176ab2
Date: Thu, 10 Mar 2022 07:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646897784
