Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671CA7B
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 04:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647751584;
	h=To:Subject:From:Message-Id:Date;
	bh=yZ73grxMhzmDLqfQliFzsbT99rMRPW7L9FIyb/pL5fA=;
	b=gwZyUufmv8wuAcl9LkrE9CNl1CeLm05G0AaA7pZMiq3sEAxa60dEahaZOsw/bnrv
	c141bCROMctHbKi7R5JW7cCxmXIzXh0FBJKlxbvLpSqYXxUTQLau9rsns/QwVng/sKI
	rN8MN1aORDnL5v+UERuU6sa1hphiAsQY2+prIoTU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647751584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yZ73grxMhzmDLqfQliFzsbT99rMRPW7L9FIyb/pL5fA=;
	b=RGLjJzwi7cUYHzSDuvy94Vr8ncJdaqljBOqNfW/OmFLiFXaC/oi8XPnF05jUdUav
	MkCcdutf2e5VKrYqhrfv1HLTfvdD7xUlg6gSMM6iQEU2fL9cy1hYJ96V8KSXWNJ+zqh
	0Ha1VKLC2v48j4fYgfXqJuWxegh2T4KpKw+kz9x0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa5a5dbe8-e57b55cd-78c4-4b92-bf1d-2a492cb6d3ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4661fcbacb8f4c862ee952fc16ad4ecab3ba7e3e5066b4351132a00220db44b8
Date: Sun, 20 Mar 2022 04:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647751584
